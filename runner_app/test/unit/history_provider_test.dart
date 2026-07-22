import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:strength_app/data/repositories/training_storage.dart';
import 'package:strength_app/domain/entities/training_session.dart';
import 'package:strength_app/presentation/providers/history_provider.dart';

class MockTrainingStorage extends Mock implements TrainingStorage {}

void main() {
  late MockTrainingStorage mockStorage;

  final testSession = TrainingSession(
    id: 'session-1',
    workoutId: 'legs',
    workoutName: '臀腿训练',
    startTime: DateTime(2026, 7, 20, 10, 30),
    endTime: DateTime(2026, 7, 20, 11),
    completedExercises: 6,
    totalExercises: 8,
    totalSeconds: 1800,
    exerciseLogs: const [],
  );

  setUp(() {
    mockStorage = MockTrainingStorage();
    when(() => mockStorage.getAllSessions()).thenReturn([testSession]);
    when(() => mockStorage.deleteSession(any())).thenAnswer((_) async {});
  });

  group('HistoryNotifier', () {
    test('initial load populates sessions from storage', () async {
      final notifier = HistoryNotifier(storage: mockStorage);

      // Wait for async init
      await Future<void>.value();

      expect(notifier.state.sessions.length, 1);
      expect(notifier.state.sessions.first.id, 'session-1');
      expect(notifier.state.isLoading, isFalse);
      expect(notifier.state.error, isNull);

      verify(() => mockStorage.getAllSessions()).called(1);
      notifier.dispose();
    });

    test('refresh reloads from storage', () async {
      final notifier = HistoryNotifier(storage: mockStorage);
      await Future<void>.value();

      final updatedSession = TrainingSession(
        id: 'session-2',
        workoutId: 'core',
        workoutName: '核心训练',
        startTime: DateTime(2026, 7, 21, 9),
        completedExercises: 4,
        totalExercises: 4,
        totalSeconds: 600,
        exerciseLogs: const [],
      );

      when(() => mockStorage.getAllSessions())
          .thenReturn([updatedSession, testSession]);

      await notifier.refresh();

      expect(notifier.state.sessions.length, 2);
      expect(notifier.state.sessions.first.id, 'session-2');
      verify(() => mockStorage.getAllSessions()).called(2);
      notifier.dispose();
    });

    test('deleteSession calls storage delete then refreshes', () async {
      final notifier = HistoryNotifier(storage: mockStorage);
      await Future<void>.value();

      when(() => mockStorage.getAllSessions()).thenReturn([]);

      await notifier.deleteSession('session-1');

      verify(() => mockStorage.deleteSession('session-1')).called(1);
      verify(() => mockStorage.getAllSessions()).called(2);
      expect(notifier.state.sessions, isEmpty);
      notifier.dispose();
    });

    test('error handling when storage throws on init', () async {
      when(() => mockStorage.getAllSessions())
          .thenThrow(Exception('Hive error'));

      final notifier = HistoryNotifier(storage: mockStorage);
      await Future<void>.value();

      expect(notifier.state.isLoading, isFalse);
      expect(notifier.state.error, isNotNull);
      expect(notifier.state.sessions, isEmpty);
      notifier.dispose();
    });

    test('error handling when storage throws on delete', () async {
      final notifier = HistoryNotifier(storage: mockStorage);
      await Future<void>.value();

      when(() => mockStorage.deleteSession(any()))
          .thenThrow(Exception('Delete failed'));

      await notifier.deleteSession('session-1');

      expect(notifier.state.error, isNotNull);
      verify(() => mockStorage.deleteSession('session-1')).called(1);
      notifier.dispose();
    });
  });

  group('HistoryState', () {
    test('default state has empty sessions and no error', () {
      const state = HistoryState();
      expect(state.sessions, isEmpty);
      expect(state.isLoading, isFalse);
      expect(state.error, isNull);
    });

    test('copyWith updates fields correctly', () {
      const state = HistoryState();
      final updated = state.copyWith(
        sessions: [testSession],
        isLoading: true,
      );
      expect(updated.sessions.length, 1);
      expect(updated.isLoading, isTrue);
      expect(updated.error, isNull);
    });

    test('copyWith clearError removes error', () {
      const state = HistoryState(error: 'some error');
      final cleared = state.copyWith(clearError: true);
      expect(cleared.error, isNull);
    });
  });

  group('HistoryNotifier with ProviderContainer', () {
    test('works with StateNotifierProvider', () async {
      final container = ProviderContainer(
        overrides: [
          historyProvider.overrideWith(
            (ref) => HistoryNotifier(storage: mockStorage),
          ),
        ],
      );

      await Future<void>.value();

      final state = container.read(historyProvider);
      expect(state.sessions.length, 1);
      expect(state.sessions.first.workoutName, '臀腿训练');

      container.dispose();
    });
  });
}
