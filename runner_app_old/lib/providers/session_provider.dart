import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:runner_app/models/workout_session.dart';
import 'package:runner_app/models/workout_type.dart';
import 'package:runner_app/providers/workout_provider.dart';
import 'package:runner_app/services/storage_service.dart';

/// Session status enum for UI state management.
enum SessionStatus {
  noSession,
  running,
  paused,
  completed,
}

/// Session state containing current session and status.
class SessionState {
  final SessionStatus status;
  final WorkoutSession? currentSession;

  const SessionState({
    this.status = SessionStatus.noSession,
    this.currentSession,
  });

  SessionState copyWith({
    SessionStatus? status,
    WorkoutSession? currentSession,
  }) {
    return SessionState(
      status: status ?? this.status,
      currentSession: currentSession ?? this.currentSession,
    );
  }
}

/// Storage service provider.
final storageServiceProvider = Provider<StorageService>((ref) {
  throw UnimplementedError('storageServiceProvider must be overridden');
});

/// Session state provider.
final sessionStateProvider =
    StateNotifierProvider<SessionNotifier, SessionState>(
  (ref) => SessionNotifier(ref.watch(storageServiceProvider), ref),
);

/// Session provider managing session persistence and recovery.
class SessionNotifier extends StateNotifier<SessionState> {
  final StorageService _storageService;
  final Ref _ref;

  SessionNotifier(this._storageService, this._ref)
      : super(const SessionState());

  /// Start a new session (called after workout starts).
  ///
  /// Persists session to storage for recovery.
  Future<void> startSession() async {
    final workoutState = _ref.read(workoutProvider);
    final session = _ref.read(workoutProvider.notifier).currentSession;

    if (session == null) return;

    await _storageService.saveSession(session);
    state = SessionState(
      status: SessionStatus.running,
      currentSession: session,
    );
  }

  /// Pause current session.
  ///
  /// Persists paused state with pausedAt timestamp.
  Future<void> pauseSession() async {
    if (state.currentSession == null) return;

    final pausedSession = state.currentSession!.copyWith(
      status: WorkoutStatus.paused,
      pausedAt: DateTime.now(),
    );

    await _storageService.saveSession(pausedSession);
    state = state.copyWith(
      status: SessionStatus.paused,
      currentSession: pausedSession,
    );
  }

  /// Resume paused session.
  ///
  /// Clears pausedAt timestamp and resumes workout.
  Future<void> resumeSession() async {
    if (state.status != SessionStatus.paused) return;

    final resumedSession = state.currentSession!.copyWith(
      status: WorkoutStatus.running,
      clearPausedAt: true,
    );

    await _storageService.saveSession(resumedSession);
    state = state.copyWith(
      status: SessionStatus.running,
      currentSession: resumedSession,
    );
  }

  /// Complete current session.
  ///
  /// Saves to history and clears current session.
  Future<void> completeSession() async {
    if (state.currentSession == null) return;

    final completedSession = state.currentSession!.copyWith(
      status: WorkoutStatus.completed,
      endTime: DateTime.now(),
    );

    await _storageService.saveToHistory(completedSession);
    await _storageService.clearSession();

    state = SessionState(
      status: SessionStatus.completed,
      currentSession: null,
    );
  }

  /// Check for incomplete session on app start.
  ///
  /// Returns paused session if exists, null otherwise.
  Future<WorkoutSession?> checkForRecovery() async {
    final hasIncomplete = await _storageService.hasIncompleteSession();
    if (!hasIncomplete) return null;

    final session = await _storageService.getCurrentSession();
    if (session != null) {
      state = SessionState(
        status: SessionStatus.paused,
        currentSession: session,
      );
    }
    return session;
  }

  /// Recover a paused session.
  ///
  /// Restores session state for continuation.
  Future<void> recoverSession() async {
    final session = await _storageService.getCurrentSession();
    if (session == null) return;

    state = SessionState(
      status: SessionStatus.paused,
      currentSession: session,
    );
  }

  /// Reset session state.
  ///
  /// Clears session from storage and state.
  Future<void> resetSession() async {
    await _storageService.clearSession();
    state = const SessionState();
  }

  /// Update current session (sync with workout provider).
  ///
  /// Called when workout provider updates session.
  void updateSession(WorkoutSession? session) {
    if (session == null) {
      state = state.copyWith(
        currentSession: null,
        status: SessionStatus.noSession,
      );
    } else {
      state = state.copyWith(currentSession: session);
    }
  }
}
