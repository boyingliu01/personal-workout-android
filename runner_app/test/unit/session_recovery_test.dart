import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:strength_app/data/repositories/training_storage.dart';
import 'package:strength_app/domain/entities/training_session.dart';

/// A minimal in-memory fake for Hive BoxString used by TrainingStorage.
class FakeStringBox extends Fake implements Box<String> {
  final Map<String, String> _data = {};

  @override
  String? get(dynamic key, {String? defaultValue}) {
    return _data.containsKey(key) ? _data[key] : defaultValue;
  }

  @override
  Future<void> put(dynamic key, String value) async {
    _data[key as String] = value;
  }

  @override
  Future<void> delete(dynamic key) async {
    _data.remove(key as String);
  }

  @override
  int get length => _data.length;

  @override
  dynamic keyAt(int index) {
    return _data.keys.elementAt(index);
  }
}

void main() {
  group('TrainingStorage session recovery', () {
    late FakeStringBox fakeBox;
    late TrainingStorage storage;

    final now = DateTime(2026, 7, 25, 10);
    final baseSession = TrainingSession(
      id: 'session-1',
      workoutId: 'legs',
      workoutName: '臀腿训练',
      startTime: now,
      endTime: now.add(const Duration(minutes: 15)),
      completedExercises: 4,
      totalExercises: 8,
      totalSeconds: 900,
      exerciseLogs: [
        const ExerciseLog(
          exerciseId: 'squat',
          exerciseName: '深蹲',
          actualSeconds: 60,
          completed: true,
        ),
      ],
    );

    setUp(() {
      fakeBox = FakeStringBox();
      storage = TrainingStorage(box: fakeBox);
    });

    test('saveInterruptedSession saves session with interrupted status',
        () async {
      // saveInterruptedSession changes status to interrupted only if
      // the session was completed; otherwise preserves existing status.
      final session = baseSession.copyWith(status: SessionStatus.completed);
      await storage.saveInterruptedSession(session);

      final saved = storage.getInterruptedSession();
      expect(saved, isNotNull);
      expect(saved!.status, SessionStatus.interrupted);
    });

    test('getInterruptedSession returns saved interrupted session', () async {
      final session = baseSession.copyWith(status: SessionStatus.interrupted);
      await storage.saveInterruptedSession(session);

      final recovered = storage.getInterruptedSession();
      expect(recovered, isNotNull);
      expect(recovered!.id, 'session-1');
      expect(recovered.workoutId, 'legs');
      expect(recovered.workoutName, '臀腿训练');
      expect(recovered.totalSeconds, 900);
    });

    test('getInterruptedSession returns null when no interrupted session', () {
      expect(storage.getInterruptedSession(), isNull);
    });

    test('clearInterruptedSession removes the interrupted session', () async {
      final session = baseSession.copyWith(status: SessionStatus.interrupted);
      await storage.saveInterruptedSession(session);

      expect(storage.getInterruptedSession(), isNotNull);

      await storage.clearInterruptedSession();

      expect(storage.getInterruptedSession(), isNull);
    });

    test('clearInterruptedSession does not remove completed sessions', () async {
      // Save a completed session
      await storage.saveSession(baseSession);
      // Save an interrupted session
      await storage.saveInterruptedSession(baseSession);

      await storage.clearInterruptedSession();

      // Completed session should still be there
      final completed = storage.getSession('session-1');
      expect(completed, isNotNull);
      expect(completed!.status, SessionStatus.completed);
    });

    test('isResumable returns true for interrupted status', () {
      final session = baseSession.copyWith(status: SessionStatus.interrupted);
      expect(session.isResumable, isTrue);
    });

    test('isResumable returns true for paused status', () {
      final session = baseSession.copyWith(status: SessionStatus.paused);
      expect(session.isResumable, isTrue);
    });

    test('isResumable returns false for completed status', () {
      final session = baseSession.copyWith(status: SessionStatus.completed);
      expect(session.isResumable, isFalse);
    });

    test('copyWith preserves all fields when no changes', () {
      final original = baseSession.copyWith(status: SessionStatus.paused);
      final copy = original.copyWith();

      expect(copy.id, original.id);
      expect(copy.workoutId, original.workoutId);
      expect(copy.workoutName, original.workoutName);
      expect(copy.startTime, original.startTime);
      expect(copy.endTime, original.endTime);
      expect(copy.completedExercises, original.completedExercises);
      expect(copy.totalExercises, original.totalExercises);
      expect(copy.totalSeconds, original.totalSeconds);
      expect(copy.status, original.status);
      expect(copy.exerciseLogs.length, original.exerciseLogs.length);
    });
  });
}
