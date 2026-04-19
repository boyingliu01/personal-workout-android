import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:provider/provider.dart';
import 'package:runner_app/models/exercise.dart';
import 'package:runner_app/models/workout.dart';
import 'package:runner_app/models/workout_type.dart';
import 'package:runner_app/screens/exercise_screen.dart';
import 'package:runner_app/services/audio_service.dart';
import 'package:runner_app/services/storage_service.dart';
import 'package:runner_app/services/timer_service.dart';
import 'package:runner_app/services/haptic_service.dart';

// Mock classes
class MockAudioService extends Mock implements AudioService {}

class MockTimerService extends Mock implements TimerService {}

class MockStorageService extends Mock implements StorageService {}

class MockHapticService extends Mock implements HapticService {}

void main() {
  group('ExerciseScreen Integration Tests', () {
    late MockAudioService mockAudioService;
    late MockTimerService mockTimerService;
    late MockStorageService mockStorageService;
    late Workout testWorkout;
    late Exercise testExercise;

    setUp(() {
      mockAudioService = MockAudioService();
      mockTimerService = MockTimerService();
      mockStorageService = MockStorageService();

      testExercise = Exercise(
        id: '1',
        name: '深蹲',
        description: '标准下肢练习',
        durationSeconds: 30,
        restSeconds: 5,
        targetMuscles: ['腿部', '臀部'],
        localVideoPath: 'assets/videos/squat.mp4',
        imagePath: 'assets/images/squat.jpg',
      );

      testWorkout = Workout(
        id: '1',
        name: '跑前动态热身',
        description: '完整的热身训练计划',
        type: WorkoutType.warmup,
        estimatedMinutes: 10,
        exercises: [testExercise, testExercise], // Two exercises for testing
      );

      // General mock set ups
      when(() => mockAudioService.isMuted).thenReturn(false);
      when(() => mockTimerService.remainingSeconds).thenReturn(30);
      when(() => mockTimerService.status).thenReturn(TimerServiceStatus.idle);
    });

    testWidgets('renders exercise screen with video player and controls', (tester) async {
      when(() => mockTimerService.status).thenReturn(TimerServiceStatus.running);

      await tester.pumpWidget(
        MaterialApp(
          home: ExerciseScreen(
            workout: testWorkout,
            audioService: mockAudioService,
            timerService: mockTimerService,
            storageService: mockStorageService,
          ),
        ),
      );

      // Verify the exercise name is displayed
      expect(find.text('深蹲'), findsOneWidget);
      
      // Verify the video player exists
      expect(find.byKey(const Key('exercise-video-player')), findsOneWidget);
      
      // Verify that countdown timer is shown
      expect(find.textContaining('30'), findsOneWidget);
      
      // Verify video controls are present
      expect(find.byIcon(Icons.skip_previous), findsOneWidget);
      expect(find.byIcon(Icons.play_arrow), findsOneWidget);
      expect(find.byIcon(Icons.skip_next), findsOneWidget);
      expect(find.byIcon(Icons.fast_forward), findsOneWidget);
      
      // Verify back button in app bar
      expect(find.byIcon(Icons.arrow_back), findsOneWidget);
    });

    testWidgets('shows exercise video and handles video playback', (tester) async {
      when(() => mockTimerService.status).thenReturn(TimerServiceStatus.running);
      when(() => mockTimerService.remainingSeconds).thenReturn(25);

      await tester.pumpWidget(
        MaterialApp(
          home: ExerciseScreen(
            workout: testWorkout,
            audioService: mockAudioService,
            timerService: mockTimerService,
            storageService: mockStorageService,
          ),
        ),
      );

      // Verify video player is displayed
      expect(find.byKey(const Key('exercise-video-player')), findsOneWidget);
      
      // Ensure no error state when playing normally
      expect(find.text('视频加载失败'), findsNothing);
      expect(find.text('加载视频中...'), findsNothing);
      
      // Simulate countdown update and verify change
      when(() => mockTimerService.remainingSeconds).thenReturn(20);
      await tester.pump();
      
      // Verify countdown timer reflects new value
      expect(find.textContaining('20'), findsOneWidget);
    });

    testWidgets('handles controls for changing exercises', (tester) async {
      when(() => mockTimerService.status).thenReturn(TimerServiceStatus.running);

      await tester.pumpWidget(
        MaterialApp(
          home: ExerciseScreen(
            workout: testWorkout,
            audioService: mockAudioService,
            timerService: mockTimerService,
            storageService: mockStorageService,
          ),
        ),
      );

      // Verify both controls are available (previous, play, next, skip)
      expect(find.byIcon(Icons.skip_previous), findsOneWidget);
      expect(find.byIcon(Icons.play_arrow), findsOneWidget);
      expect(find.byIcon(Icons.skip_next), findsOneWidget);
      expect(find.byIcon(Icons.fast_forward), findsOneWidget);

      // Verify exercise index is 0 initially
      expect(find.text('1/2'), findsOneWidget); // Since we had 2 exercises
      
      // Tap next button for next exercise
      await tester.tap(find.byIcon(Icons.skip_next));
      await tester.pump();

      // Verify exercise has potentially moved to next exercise 
      expect(find.text('深蹲'), findsAtLeastNWidgets(1));
    });

    testWidgets('handles pause/resume functionality', (tester) async {
      when(() => mockTimerService.status).thenReturn(TimerServiceStatus.running);

      await tester.pumpWidget(
        MaterialApp(
          home: ExerciseScreen(
            workout: testWorkout,
            audioService: mockAudioService,
            timerService: mockTimerService,
            storageService: mockStorageService,
          ),
        ),
      );

      // Verify we start with play icon meaning paused (based on isPaused state)
      expect(find.byIcon(Icons.play_arrow), findsWidgets);
      
      // Tap play/pause button
      await tester.tap(find.byIcon(Icons.play_arrow));
      await tester.pump();

      // Verify the button was pressed
      verify(() => mockTimerService.pause()).called(1);
    });

    testWidgets('handles skipping to next exercise', (tester) async {
      when(() => mockTimerService.status).thenReturn(TimerServiceStatus.running);

      await tester.pumpWidget(
        MaterialApp(
          home: ExerciseScreen(
            workout: testWorkout,
            audioService: mockAudioService,
            timerService: mockTimerService,
            storageService: mockStorageService,
          ),
        ),
      );

      // Tap fast forward button to skip exercise
      await tester.tap(find.byIcon(Icons.fast_forward));
      await tester.pump();

      // Verify exercise was skipped
      verify(() => mockTimerService.start(any(that: greaterThan(0)))).called(1); // Called if moving to next
    });

    testWidgets('displays targets muscles as chips', (tester) async {
      when(() => mockTimerService.status).thenReturn(TimerServiceStatus.running);

      await tester.pumpWidget(
        MaterialApp(
          home: ExerciseScreen(
            workout: testWorkout,
            audioService: mockAudioService,
            timerService: mockTimerService,
            storageService: mockStorageService,
          ),
        ),
      );

      // Check that target muscles are displayed as chips
      expect(find.text('腿部'), findsOneWidget);
      expect(find.text('臀部'), findsOneWidget);
    });

    testWidgets('shows progress indication with dots', (tester) async {
      when(() => mockTimerService.status).thenReturn(TimerServiceStatus.running);

      await tester.pumpWidget(
        MaterialApp(
          home: ExerciseScreen(
            workout: testWorkout,
            audioService: mockAudioService,
            timerService: mockTimerService,
            storageService: mockStorageService,
          ),
        ),
      );

      // Verify the progress dot visualization is present (this would be based on the ProgressDots widget)
      expect(find.byKey(const Key('progress-dots')), findsOneWidget); // Assuming progress dots have key
    });
    
    testWidgets('manages workout session correctly', (tester) async {
      when(() => mockTimerService.status).thenReturn(TimerServiceStatus.running);

      await tester.pumpWidget(
        MaterialApp(
          home: ExerciseScreen(
            workout: testWorkout,
            audioService: mockAudioService,
            timerService: mockTimerService,
            storageService: mockStorageService,
          ),
        ),
      );

      // Verify that services have been used for session management
      verify(() => mockAudioService.announceExerciseStart('深蹲')).called(1);
    });
  });
}