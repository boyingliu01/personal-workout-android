import 'package:hive_flutter/hive_flutter.dart';
import 'package:runner_app/models/workout_session.dart';
import 'package:runner_app/models/workout_type.dart';

/// Storage service using Hive for local persistence.
///
/// Manages workout sessions and history with NoSQL storage.
class StorageService {
  static const String _currentSessionBox = 'current_session';
  static const String _historyBox = 'history';

  bool _initialized = false;
  Box<WorkoutSession>? _currentSessionBoxInstance;
  Box<WorkoutSession>? _historyBoxInstance;

  /// Initialize Hive storage.
  ///
  /// Must be called before any other operations.
  /// Use useTestMode for unit tests (in-memory storage).
  Future<void> init({bool useTestMode = false}) async {
    if (_initialized) return;

    if (useTestMode) {
      // Use in-memory storage for tests
      Hive.init('test_hive');
    } else {
      await Hive.initFlutter();
    }

    // Register adapters
    if (!Hive.isAdapterRegistered(0)) {
      Hive.registerAdapter(WorkoutSessionAdapter());
    }
    if (!Hive.isAdapterRegistered(1)) {
      Hive.registerAdapter(WorkoutTypeAdapter());
    }
    if (!Hive.isAdapterRegistered(2)) {
      Hive.registerAdapter(WorkoutStatusAdapter());
    }

    // Open boxes
    _currentSessionBoxInstance =
        await Hive.openBox<WorkoutSession>(_currentSessionBox);
    _historyBoxInstance = await Hive.openBox<WorkoutSession>(_historyBox);

    _initialized = true;
  }

  /// Save current session for persistence/recovery.
  Future<void> saveSession(WorkoutSession session) async {
    _ensureInitialized();
    await _currentSessionBoxInstance!.put('current', session);
  }

  /// Get current session (for recovery).
  ///
  /// Returns null if no session stored.
  Future<WorkoutSession?> getCurrentSession() async {
    _ensureInitialized();
    return _currentSessionBoxInstance!.get('current');
  }

  /// Clear current session (on completion or reset).
  Future<void> clearSession() async {
    _ensureInitialized();
    await _currentSessionBoxInstance!.delete('current');
  }

  /// Check if there's an incomplete session for recovery.
  ///
  /// Returns true if session exists and status is paused.
  Future<bool> hasIncompleteSession() async {
    final session = await getCurrentSession();
    if (session == null) return false;
    return session.status == WorkoutStatus.paused;
  }

  /// Save completed session to history.
  Future<void> saveToHistory(WorkoutSession session) async {
    _ensureInitialized();
    // Use startTime timestamp as key for ordering
    final key = session.startTime.millisecondsSinceEpoch.toString();
    await _historyBoxInstance!.put(key, session);
  }

  /// Get workout history, sorted by startTime (most recent first).
  Future<List<WorkoutSession>> getHistory() async {
    _ensureInitialized();
    final sessions = _historyBoxInstance!.values.toList();
    sessions.sort((a, b) => b.startTime.compareTo(a.startTime));
    return sessions;
  }

  /// Get history filtered by workout type.
  Future<List<WorkoutSession>> getHistoryByType(WorkoutType type) async {
    final history = await getHistory();
    return history.where((s) => s.workoutType == type).toList();
  }

  /// Clear all history.
  Future<void> clearHistory() async {
    _ensureInitialized();
    await _historyBoxInstance!.clear();
  }

  /// Get total number of completed workouts.
  Future<int> getTotalWorkouts() async {
    final history = await getHistory();
    return history.length;
  }

  /// Get total training minutes across all history.
  Future<int> getTotalMinutes() async {
    final history = await getHistory();
    var total = 0;
    for (final session in history) {
      total += session.totalSeconds ~/ 60;
    }
    return total;
  }

  /// Clear all storage (for testing).
  Future<void> clearAll() async {
    _ensureInitialized();
    await _currentSessionBoxInstance!.clear();
    await _historyBoxInstance!.clear();
  }

  void _ensureInitialized() {
    if (!_initialized ||
        _currentSessionBoxInstance == null ||
        _historyBoxInstance == null) {
      throw StateError('StorageService not initialized. Call init() first.');
    }
  }
}

/// Type adapter for WorkoutSession.
class WorkoutSessionAdapter extends TypeAdapter<WorkoutSession> {
  @override
  final int typeId = 0;

  @override
  WorkoutSession read(BinaryReader reader) {
    return WorkoutSession(
      id: reader.readString(),
      workoutId: reader.readString(),
      workoutName: reader.readString(),
      workoutType: reader.read() as WorkoutType,
      startTime: DateTime.fromMillisecondsSinceEpoch(reader.readInt()),
      endTime: reader.readInt() != 0
          ? DateTime.fromMillisecondsSinceEpoch(reader.readInt())
          : null,
      pausedAt: reader.readInt() != 0
          ? DateTime.fromMillisecondsSinceEpoch(reader.readInt())
          : null,
      currentExerciseIndex: reader.readInt(),
      remainingSeconds: reader.readInt(),
      completedExercises: reader.readInt(),
      totalExercises: reader.readInt(),
      totalSeconds: reader.readInt(),
      status: reader.read() as WorkoutStatus,
      exerciseRecords: const [], // Simplified for MVP
    );
  }

  @override
  void write(BinaryWriter writer, WorkoutSession obj) {
    writer.writeString(obj.id);
    writer.writeString(obj.workoutId);
    writer.writeString(obj.workoutName);
    writer.write(obj.workoutType);
    writer.writeInt(obj.startTime.millisecondsSinceEpoch);
    writer.writeInt(obj.endTime?.millisecondsSinceEpoch ?? 0);
    writer.writeInt(obj.pausedAt?.millisecondsSinceEpoch ?? 0);
    writer.writeInt(obj.currentExerciseIndex);
    writer.writeInt(obj.remainingSeconds);
    writer.writeInt(obj.completedExercises);
    writer.writeInt(obj.totalExercises);
    writer.writeInt(obj.totalSeconds);
    writer.write(obj.status);
  }
}

/// Type adapter for WorkoutType enum.
class WorkoutTypeAdapter extends TypeAdapter<WorkoutType> {
  @override
  final int typeId = 1;

  @override
  WorkoutType read(BinaryReader reader) {
    return WorkoutType.values[reader.readInt()];
  }

  @override
  void write(BinaryWriter writer, WorkoutType obj) {
    writer.writeInt(obj.index);
  }
}

/// Type adapter for WorkoutStatus enum.
class WorkoutStatusAdapter extends TypeAdapter<WorkoutStatus> {
  @override
  final int typeId = 2;

  @override
  WorkoutStatus read(BinaryReader reader) {
    return WorkoutStatus.values[reader.readInt()];
  }

  @override
  void write(BinaryWriter writer, WorkoutStatus obj) {
    writer.writeInt(obj.index);
  }
}
