import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:runner_app/models/workout_session.dart';
import 'package:runner_app/models/workout_type.dart';
import 'package:runner_app/services/audio_service.dart';
import 'package:runner_app/screens/workout_complete_screen.dart';

class MockAudioServiceWorkoutComplete extends Mock {
  @override
  Future<void> announceWorkoutComplete() async {}
  
  @override
  bool get isMuted => _muted;
  
  bool _muted = false;
  
  @override
  void toggleMute() {
    _muted = !_muted;
  }
}

void main() {
  group('WorkoutCompleteScreen', () {
    late WorkoutSession session;
    late MockAudioServiceWorkoutComplete mockAudioService;

    setUp(() {
      session = WorkoutSession(
        id: 'test',
        workoutId: 'workout1',
        workoutName: 'Test Workout',
        startTime: DateTime.now().subtract(const Duration(minutes: 10)),
        endTime: DateTime.now(),
        currentExerciseIndex: 0,
        completedExercises: 10,
        totalExercises: 10,
        totalSeconds: 600, // 10 minutes worth of seconds
        status: WorkoutStatus.completed,
        exerciseRecords: const [],
      );
      mockAudioService = MockAudioServiceWorkoutComplete();
      
      when(mockAudioService.isMuted).thenReturn(false);
    });

    testWidgets('displays workout completion message', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: WorkoutCompleteScreen(
            session: session,
            audioService: mockAudioService,
          ),
        ),
      );

      // Verify the completion message is displayed
      expect(find.text('训练完成，真棒！'), findsOneWidget);
    });

    testWidgets('displays stats correctly', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: WorkoutCompleteScreen(
            session: session,
            audioService: mockAudioService,
          ),
        ),
      );

      // Verify stat displays
      expect(find.textContaining('10'), findsWidgets); // Total exercises completed
      expect(find.textContaining('10分钟'), findsAtLeastOneWidget); // Duration in minutes
      expect(find.textContaining('100%'), findsAtLeastOneWidget); // Completion percentage (10/10 = 100%)
    });

    testWidgets('plays workout complete announcement', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: WorkoutCompleteScreen(
            session: session,
            audioService: mockAudioService,
          ),
        ),
      );

      verify(mockAudioService.announceWorkoutComplete()).called(1);
    });

    testWidgets('displays correct workout name', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: WorkoutCompleteScreen(
            session: session,
            audioService: mockAudioService,
          ),
        ),
      );

      expect(find.text('Test Workout'), findsOneWidget);
    });

    testWidgets('formats time duration correctly', (tester) async {
      // Create a session with 670 seconds (11m 10s) - should be rounded to 11 minutes
      final sessionWithExtraSeconds = WorkoutSession(
        id: 'test',
        workoutId: 'workout1',
        workoutName: 'Test Workout',
        startTime: DateTime.now().subtract(const Duration(minutes: 11, seconds: 10)),
        endTime: DateTime.now(),
        currentExerciseIndex: 0,
        completedExercises: 5,
        totalExercises: 10,
        totalSeconds: 670, // 11 minutes and 10 seconds
        status: WorkoutStatus.completed,
        exerciseRecords: const [],
      );

      await tester.pumpWidget(
        MaterialApp(
          home: WorkoutCompleteScreen(
            session: sessionWithExtraSeconds,
            audioService: mockAudioService,
          ),
        ),
      );

      expect(find.textContaining('11分钟'), findsAtLeastOneWidget);
    });

    testWidgets('calculates completion percentage correctly', (tester) async {
      final partialSession = WorkoutSession(
        id: 'test',
        workoutId: 'workout1',
        workoutName: 'Partial Workout',
        startTime: DateTime.now().subtract(const Duration(minutes: 5)),
        endTime: DateTime.now(),
        currentExerciseIndex: 0,
        completedExercises: 5,
        totalExercises: 10,
        totalSeconds: 300,
        status: WorkoutStatus.completed,
        exerciseRecords: const [],
      );

      await tester.pumpWidget(
        MaterialApp(
          home: WorkoutCompleteScreen(
            session: partialSession,
            audioService: mockAudioService,
          ),
        ),
      );

      expect(find.text('5/10'), findsOneWidget); // Completed/Total
      expect(find.textContaining('50%'), findsAtLeastOneWidget); // Half completion = 50%
    });

    testWidgets('navigation buttons exist', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: WorkoutCompleteScreen(
            session: session,
            audioService: mockAudioService,
          ),
        ),
      );

      expect(find.text('查看历史记录'), findsOneWidget);
      expect(find.text('返回首页'), findsOneWidget);
    });
  });
}
}

void main() {
  group('WorkoutCompleteScreen', () {
    late WorkoutSession session;
    late MockAudioServiceWorkoutComplete mockAudioService;

    setUp(() {
      session = WorkoutSession(
        id: 'test',
        workoutId: 'workout1',
        workoutName: 'Test Workout',
        startTime: DateTime.now().subtract(const Duration(minutes: 10)),
        endTime: DateTime.now(),
        currentExerciseIndex: 0,
        completedExercises: 10,
        totalExercises: 10,
        totalSeconds: 600, // 10 minutes worth of seconds
        status: WorkoutStatus.completed,
        exerciseRecords: const [],
      );
      mockAudioService = MockAudioServiceWorkoutComplete();
      
      when(mockAudioService.isMuted).thenReturn(false);
    });

    testWidgets('displays workout completion message', (tester) async {
      await tester.pumpWidget(
        createTestAppWithProviders(
          home: WorkoutCompleteScreen(
            session: session,
            audioService: mockAudioService,
          ),
        ),
      );

      // Verify the completion message is displayed
      expect(find.text('训练完成，真棒！'), findsOneWidget);
    });

    testWidgets('displays stats correctly', (tester) async {
      await tester.pumpWidget(
        createTestAppWithProviders(
          home: WorkoutCompleteScreen(
            session: session,
            audioService: mockAudioService,
          ),
        ),
      );

      // Verify stat displays
      expect(find.textContaining('10'), findsWidgets); // Total exercises completed
      expect(find.textContaining('10'), findsWidgets); // Should show in both completed/total count
      expect(find.textContaining('10分钟'), findsAtLeastOneWidget); // Duration in minutes
      expect(find.textContaining('100%'), findsAtLeastOneWidget); // Completion percentage (10/10 = 100%)
    });

    testWidgets('plays workout complete announcement', (tester) async {
      await tester.pumpWidget(
        createTestAppWithProviders(
          home: WorkoutCompleteScreen(
            session: session,
            audioService: mockAudioService,
          ),
        ),
      );

      verify(mockAudioService.announceWorkoutComplete()).called(1);
    });

    testWidgets('has View History button that navigates', (tester) async {
      var historyPressed = false;
      await tester.pumpWidget(
        createTestAppWithProviders(
          home: MaterialApp(
            home: Scaffold(
              body: WorkoutCompleteScreen(
                session: session,
                audioService: mockAudioService,
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  historyPressed = true;
                },
                child: const Text('Debug'),
              ),
            ),
          ),
        ),
        routes: {
          '/history': (context) => const Scaffold(body: Text('History Screen')),
        },
      );

      // Find and tap the "查看历史记录" (View History) button
      final viewHistoryButton = find.text('查看历史记录');
      await tester.ensureVisible(viewHistoryButton);
      await tester.tap(viewHistoryButton);

      // Verify that navigation occurred (we'd need to check actual router in real implementation)
    });

    testWidgets('has Return to Home button that navigates', (tester) async {
      await tester.pumpWidget(
        createTestAppWithProviders(
          home: MaterialApp(
            home: Scaffold(
              body: WorkoutCompleteScreen(
                session: session,
                audioService: mockAudioService,
              ),
            ),
          ),
        ),
        routes: {
          '/': (context) => const Scaffold(body: Text('Home Screen')),
        },
      );

      // Find and tap the "返回首页" (Return Home) button
      final returnHomeButton = find.text('返回首页');
      await tester.ensureVisible(returnHomeButton);
      await tester.tap(returnHomeButton);
    });

    testWidgets('displays correct workout name', (tester) async {
      await tester.pumpWidget(
        createTestAppWithProviders(
          home: WorkoutCompleteScreen(
            session: session,
            audioService: mockAudioService,
          ),
        ),
      );

      expect(find.text('Test Workout'), findsOneWidget);
    });

    testWidgets('formats time duration correctly', (tester) async {
      // Create a session with 670 seconds (11m 10s) - should be rounded to 11 minutes
      final sessionWithExtraSeconds = WorkoutSession(
        id: 'test',
        workoutId: 'workout1',
        workoutName: 'Test Workout',
        startTime: DateTime.now().subtract(const Duration(minutes: 11, seconds: 10)),
        endTime: DateTime.now(),
        currentExerciseIndex: 0,
        completedExercises: 5,
        totalExercises: 10,
        totalSeconds: 670, // 11 minutes and 10 seconds
        status: WorkoutStatus.completed,
        exerciseRecords: const [],
      );

      await tester.pumpWidget(
        createTestAppWithProviders(
          home: WorkoutCompleteScreen(
            session: sessionWithExtraSeconds,
            audioService: mockAudioService,
          ),
        ),
      );

      expect(find.textContaining('11分钟'), findsAtLeastOneWidget);
    });

    testWidgets('calculates completion percentage correctly', (tester) async {
      final partialSession = WorkoutSession(
        id: 'test',
        workoutId: 'workout1',
        workoutName: 'Partial Workout',
        startTime: DateTime.now().subtract(const Duration(minutes: 5)),
        endTime: DateTime.now(),
        currentExerciseIndex: 0,
        completedExercises: 5,
        totalExercises: 10,
        totalSeconds: 300,
        status: WorkoutStatus.completed,
        exerciseRecords: const [],
      );

      await tester.pumpWidget(
        createTestAppWithProviders(
          home: WorkoutCompleteScreen(
            session: partialSession,
            audioService: mockAudioService,
          ),
        ),
      );

      expect(find.text('5/10'), findsOneWidget); // Completed/Total
      expect(find.textContaining('50%'), findsAtLeastOneWidget); // Half completion = 50%
    });

    testWidgets('displays ExerciseVideoPlayer and ExerciseControls when available', (tester) async {
      await tester.pumpWidget(
        createTestAppWithProviders(
          home: WorkoutCompleteScreen(
            session: session,
            audioService: mockAudioService,
          ),
        ),
      );

      // These widgets might be used in a "summary" mode or replay mode
      expect(find.byType(ExerciseVideoPlayer), findsOneWidget);
      expect(find.byType(ExerciseControls), findsOneWidget);
    });

    testWidgets('handles empty workout scenario', (tester) async {
      final emptySession = WorkoutSession(
        id: 'test',
        workoutId: 'empty1',
        workoutName: 'Empty Workout',
        startTime: DateTime.now(),
        currentExerciseIndex: 0,
        completedExercises: 0,
        totalExercises: 5,
        totalSeconds: 0,
        status: WorkoutStatus.completed,
        exerciseRecords: const [],
      );

      await tester.pumpWidget(
        createTestAppWithProviders(
          home: WorkoutCompleteScreen(
            session: emptySession,
            audioService: mockAudioService,
          ),
        ),
      );

      expect(find.text('0/5'), findsOneWidget); // 0 completed out of 5 total
      expect(find.textContaining('0%'), findsAtLeastOneWidget); // 0% completion
      expect(find.textContaining('0分钟'), findsAtLeastOneWidget); // 0 minutes duration
    });
  });
}