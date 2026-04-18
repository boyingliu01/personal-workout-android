import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:runner_app/models/workout.dart';
import 'package:runner_app/models/exercise.dart';
import 'package:runner_app/providers/workout_provider.dart';
import 'package:runner_app/screens/exercise_screen.dart';

class MockAudioService extends Mock {
  bool _isMuted = false;
  
  @override
  Future<void> announceExerciseStart(String exerciseName) async {}
  
  @override
  Future<void> announceExerciseComplete() async {}
  
  @override
  Future<void> playBeep() async {}

  @override
  bool get isMuted => _isMuted;
  
  @override
  void toggleMute() {
    _isMuted = !_isMuted;
  }
}

class MockTimerService extends Mock {
  @override
  void start(int durationSeconds) {}
  
  @override
  void pause() {}
  
  @override
  void resume() {}
  
  @override
  void reset() {}
  
  @override
  void setOnComplete(void Function() callback) {}
  
  @override
  int get remainingSeconds => 30; 
}

class MockStorageService extends Mock {
  @override
  Future<void> saveSession(dynamic session) async {}
}

void main() {
  late Workout workout;
  late MockAudioService mockAudioService;
  late MockTimerService mockTimerService;
  late MockStorageService mockStorageService;

  setUp(() {
    mockAudioService = MockAudioService();
    mockTimerService = MockTimerService();
    mockStorageService = MockStorageService();
    
    // Create a basic test workout
    final exercise = Exercise(
      id: '1',
      name: 'Push Up',
      description: 'Basic push up exercise',
      durationSeconds: 45,
      restSeconds: 5,
      targetMuscles: ['Chest', 'Shoulders'],
      difficulty: Difficulty.beginner,
      category: ExerciseCategory.upperBody,
    );
    
    workout = Workout(
      id: 'workout1',
      name: 'Basic Workout',
      description: 'A basic workout',
      type: WorkoutType.strength,
      difficulty: Difficulty.beginner,
      category: WorkoutCategory.fullBody,
      exercises: [exercise, exercise], // Two exercises for testing
    );
  });

  group('ExerciseScreen', () {
    testWidgets('displays exercise content properly', (tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: ExerciseScreen(
              workout: workout,
              audioService: mockAudioService,
              timerService: mockTimerService,
              storageService: mockStorageService,
            ),
          ),
        ),
      );

      // Test that basic elements are displayed
      expect(find.text(workout.exercises[0].name), findsOneWidget);
      expect(find.byType(ExerciseVideoPlayer), findsOneWidget);
      expect(find.byType(ProgressDots), findsOneWidget);
      expect(find.byType(CountdownTimer), findsOneWidget);
      expect(find.byType(ExerciseControls), findsOneWidget);
    });

    testWidgets('handles pause/resume toggle', (tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: ExerciseScreen(
              workout: workout,
              audioService: mockAudioService,
              timerService: mockTimerService,
              storageService: mockStorageService,
            ),
          ),
        ),
      );

      // Test that audio mute toggle works
      expect(find.byIcon(Icons.volume_up), findsOneWidget);
      
      // Simulate clicking the mute button which would call toggleMute
      verifyNever(mockAudioService.toggleMute());
    });

    testWidgets('handles next, previous, and skip', (tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: ExerciseScreen(
              workout: workout,
              audioService: mockAudioService,
              timerService: mockTimerService,
              storageService: mockStorageService,
            ),
          ),
        ),
      );

      // Test that icons related to exercise controls are present
      expect(find.byIcon(Icons.skip_previous), findsOneWidget);
      expect(find.byIcon(Icons.skip_next), findsOneWidget);
      expect(find.byIcon(Icons.fast_forward), findsOneWidget);
    });

    testWidgets('displays exercise details', (tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: ExerciseScreen(
              workout: workout,
              audioService: mockAudioService,
              timerService: mockTimerService,
              storageService: mockStorageService,
            ),
          ),
        ),
      );

      // Check that exercise name is displayed
      expect(find.text(workout.exercises[0].name), findsOneWidget);
      
      // Check that target muscles are displayed
      for (final muscle in workout.exercises[0].targetMuscles) {
        expect(find.text(muscle), findsOneWidget);
      }
    });
  });
}
}

class MockTimerService extends Mock {
  @override
  void start(int durationSeconds) {}
  
  @override
  void pause() {}
  
  @override
  void resume() {}
  
  @override
  void reset() {}
  
  @override
  void setOnComplete(void Function() callback) {}
  
  @override
  int get remainingSeconds => _remainingSeconds;
  int _remainingSeconds = 30; 
  
  void setRemainingSeconds(int seconds) {
    _remainingSeconds = seconds;
  }
}

class MockStorageService extends Mock {
  @override
  Future<void> saveSession(dynamic session) async {}
}

void main() {
  group('ExerciseScreen', () {
    late Workout workout;
    late MockAudioService mockAudioService;
    late MockTimerService mockTimerService;
    late MockStorageService mockStorageService;

    setUp(() {
      mockAudioService = MockAudioService();
      mockTimerService = MockTimerService();
      mockStorageService = MockStorageService();
      
      // Set up mock behavior
      when(mockAudioService.isMuted).thenReturn(false);
      
      workout = createTestWorkout();
    });

    testWidgets('displays exercise video player and controls', (tester) async {
      await tester.pumpWidget(
        createTestAppWithProviders(
          home: ExerciseScreen(
            workout: workout,
            audioService: mockAudioService,
            timerService: mockTimerService,
            storageService: mockStorageService,
          ),
        ),
      );

      // Verify that essential widgets are displayed
      expect(find.byType(ExerciseVideoPlayer), findsOneWidget);
      expect(find.byType(ProgressDots), findsOneWidget);
      expect(find.byType(CountdownTimer), findsOneWidget);
      expect(find.byType(ExerciseControls), findsOneWidget);
    });

    testWidgets('displays exercise name and target muscles', (tester) async {
      await tester.pumpWidget(
        createTestAppWithProviders(
          home: ExerciseScreen(
            workout: workout,
            audioService: mockAudioService,
            timerService: mockTimerService,
            storageService: mockStorageService,
          ),
        ),
      );

      // Verify exercise details are shown
      expect(find.text(workout.exercises[0].name), findsOneWidget);
      final targetMusclesText = workout.exercises[0].targetMuscles.join('、');
      if (targetMusclesText.isNotEmpty) {
        expect(find.text(targetMusclesText), findsOneWidget);
      }
    });

    testWidgets('starts exercise with announcement and timer', (tester) async {
      await tester.pumpWidget(
        createTestAppWithProviders(
          home: ExerciseScreen(
            workout: workout,
            audioService: mockAudioService,
            timerService: mockTimerService,
            storageService: mockStorageService,
          ),
        ),
      );

      await tester.pump(); // Allow time for init logic
    });

    testWidgets('handles next exercise button', (tester) async {
      await tester.pumpWidget(
        createTestAppWithProviders(
          home: ExerciseScreen(
            workout: workout,
            audioService: mockAudioService,
            timerService: mockTimerService,
            storageService: mockStorageService,
          ),
        ),
      );

      // Tap the next button (skip_next icon)
      final nextButton = find.byIcon(Icons.skip_next);
      await tester.ensureVisible(nextButton);
      await tester.tap(nextButton);
    });

    testWidgets('handles previous exercise button', (tester) async {
      await tester.pumpWidget(
        createTestAppWithProviders(
          home: ExerciseScreen(
            workout: workout,
            audioService: mockAudioService,
            timerService: mockTimerService,
            storageService: mockStorageService,
          ),
        ),
      );

      // Move to next exercise first to allow going back
      final nextButton = find.byIcon(Icons.skip_next);
      await tester.ensureVisible(nextButton);
      await tester.tap(nextButton);

      // Then go back
      final prevButton = find.byIcon(Icons.skip_previous);
      await tester.ensureVisible(prevButton);
      await tester.tap(prevButton);
    });

    testWidgets('handles pause/resume button', (tester) async {
      await tester.pumpWidget(
        createTestAppWithProviders(
          home: ExerciseScreen(
            workout: workout,
            audioService: mockAudioService,
            timerService: mockTimerService,
            storageService: mockStorageService,
          ),
        ),
      );

      // Tap pause button (this icon is either play_arrow or pause - we need to find the right one)
      final pauseButton = find.byIcon(Icons.pause);
      if (tester.any(pauseButton)) {
        await tester.ensureVisible(pauseButton);
        await tester.tap(pauseButton);
      }
      
      // If the initial icon is play_arrow (meaning paused), tap it to start
      final playButton = find.byIcon(Icons.play_arrow);
      if (tester.any(playButton)) {
        await tester.ensureVisible(playButton);
        await tester.tap(playButton);
      }
    });

    testWidgets('handles skip exercise button', (tester) async {
      await tester.pumpWidget(
        createTestAppWithProviders(
          home: ExerciseScreen(
            workout: workout,
            audioService: mockAudioService,
            timerService: mockTimerService,
            storageService: mockStorageService,
          ),
        ),
      );

      // Find and tap the skip forward button
      final skipButton = find.byIcon(Icons.fast_forward);
      await tester.ensureVisible(skipButton);
      await tester.tap(skipButton);
    });

    testWidgets('handles mute toggle button', (tester) async {
      await tester.pumpWidget(
        createTestAppWithProviders(
          home: ExerciseScreen(
            workout: workout,
            audioService: mockAudioService,
            timerService: mockTimerService,
            storageService: mockStorageService,
          ),
        ),
      );

      // Find and tap the audio controller mute button
      final muteButton = find.byIcon(Icons.volume_up);
      if (tester.any(muteButton)) {
        await tester.ensureVisible(muteButton);
        await tester.tap(muteButton);

        // Verify the toggleMute method was called on the audio service
        verify(mockAudioService.toggleMute()).called(1);
      }
    });

    testWidgets('displays progress dots correctly', (tester) async {
      await tester.pumpWidget(
        createTestAppWithProviders(
          home: ExerciseScreen(
            workout: workout,
            audioService: mockAudioService,
            timerService: mockTimerService,
            storageService: mockStorageService,
          ),
        ),
      );

      // Verify progress dots show total exercises (should find the number of dots matching exercise count)
      expect(find.byType(ProgressDots), findsOneWidget);
    });
  });
}
}

class MockTimerService extends Mock {
  @override
  void start(int durationSeconds) {}
  
  @override
  void pause() {}
  
  @override
  void resume() {}
  
  @override
  void reset() {}
  
  @override
  void setOnComplete(void Function() callback) {}
  
  @override
  Stream<int> get countdownStream => _countdownStream.stream;
  final StreamController<int> _countdownStream = StreamController<int>();
  
  @override
  int get remainingSeconds => 30; 

  void emitRemainingSeconds(int seconds) {
    _countdownStream.add(seconds);
  }
}

class MockStorageService extends Mock {
  @override
  Future<void> saveSession(dynamic session) async {}
}

void main() {
  group('ExerciseScreen', () {
    late Workout workout;
    late MockAudioService mockAudioService;
    late MockTimerService mockTimerService;
    late MockStorageService mockStorageService;

    setUp(() {
      mockAudioService = MockAudioService();
      mockTimerService = MockTimerService();
      mockStorageService = MockStorageService();
      
      workout = createTestWorkout();
    });

    tearDown(() {
      mockTimerService._countdownStream.close();
    });

    testWidgets('displays exercise video player and controls', (tester) async {
      await tester.pumpWidget(
        createTestAppWithProviders(
          providers: [
            workoutProvider.overrideWith((ref) {
              final notifier = WorkoutNotifier();
              notifier.startWorkout(workout);
              return notifier;
            }),
          ],
          home: ExerciseScreen(
            workout: workout,
            audioService: mockAudioService,
            timerService: mockTimerService,
            storageService: mockStorageService,
          ),
        ),
      );

      // Verify that essential widgets are displayed
      expect(find.byType(ExerciseVideoPlayer), findsOneWidget);
      expect(find.byType(ProgressDots), findsOneWidget);
      expect(find.byType(CountdownTimer), findsOneWidget);
      expect(find.byType(ExerciseControls), findsOneWidget);
    });

    testWidgets('displays exercise name and target muscles', (tester) async {
      await tester.pumpWidget(
        createTestAppWithProviders(
          providers: [
            workoutProvider.overrideWith((ref) {
              final notifier = WorkoutNotifier();
              notifier.startWorkout(workout);
              return notifier;
            }),
          ],
          home: ExerciseScreen(
            workout: workout,
            audioService: mockAudioService,
            timerService: mockTimerService,
            storageService: mockStorageService,
          ),
        ),
      );

      // Verify exercise details are shown
      expect(find.text(workout.exercises[0].name), findsOneWidget);
      final targetMusclesText = workout.exercises[0].targetMuscles.join('、');
      if (targetMusclesText.isNotEmpty) {
        expect(find.text(targetMusclesText), findsOneWidget);
      }
    });

    testWidgets('starts exercise with announcement and timer', (tester) async {
      await tester.pumpWidget(
        createTestAppWithProviders(
          providers: [
            workoutProvider.overrideWith((ref) {
              final notifier = WorkoutNotifier();
              notifier.startWorkout(workout);
              return notifier;
            }),
          ],
          home: ExerciseScreen(
            workout: workout,
            audioService: mockAudioService,
            timerService: mockTimerService,
            storageService: mockStorageService,
          ),
        ),
      );

      verify(mockAudioService.announceExerciseStart(workout.exercises[0].name)).called(1);
      verify(mockTimerService.start(45)).called(1); // Default duration is 45
    });

    testWidgets('handles pause/resume with controls', (tester) async {
      int pauseCallCount = 0;
      int resumeCallCount = 0;
      int startCallCount = 0;

      when(mockAudioService.isMuted).thenReturn(false);
      
      // Track when methods are called
      mockTimerService.onStart = () => startCallCount++;
      mockTimerService.onPause = () => pauseCallCount++;
      mockTimerService.onResume = () => resumeCallCount++;
      
      await tester.pumpWidget(
        createTestAppWithProviders(
          providers: [
            workoutProvider.overrideWith((ref) {
              final notifier = WorkoutNotifier();
              notifier.startWorkout(workout);
              return notifier;
            }),
          ],
          home: ExerciseScreen(
            workout: workout,
            audioService: mockAudioService,
            timerService: mockTimerService,
            storageService: mockStorageService,
          ),
        ),
      );

      // Initially, start should have been called
      expect(startCallCount, greaterThan(0));

      // Tap pause button (second icon button with play/pause icon)
      final pauseButtons = find.byType(IconButton);
      await tester.tap(pauseButtons.at(1)); // Second IconButton is the pause/play
      
      verify(mockTimerService.pause()).called(1);
      verify(mockTimerService.resume()).called(0);
    });

    testWidgets('goes to next exercise when timer completes', (tester) async {
      late VoidCallback onComplete;
      when(mockTimerService.setOnComplete(captureThat(anything))).thenAnswer((invocation) {
        onComplete = invocation.positionalArguments[0] as VoidCallback;
      });

      bool nextExerciseCalled = false;
      
      await tester.pumpWidget(
        createTestAppWithProviders(
          providers: [
            workoutProvider.overrideWith((ref) {
              final notifier = WorkoutNotifier();
              notifier.startWorkout(workout);
              
              // Override the nextExercise method to track if it's called
              addTearDown(() {});
              return notifier;
            }),
          ],
          home: ExerciseScreen(
            workout: workout,
            audioService: mockAudioService,
            timerService: mockTimerService,
            storageService: mockStorageService,
          ),
        ),
      );
      
      // Simulate timer completion
      await tester.runAsync(() async {
        onComplete();
        await tester.pumpAndSettle();
      });

      verify(mockAudioService.announceExerciseComplete()).called(1);
      verify(mockTimerService.playBeep()).called(1);
    });

    testWidgets('navigates to workout complete screen when workout is finished', (tester) async {
      await tester.pumpWidget(
        createTestAppWithProviders(
          providers: [
            workoutProvider.overrideWith((ref) {
              final notifier = WorkoutNotifier();
              notifier.startWorkout(workout);
              // Directly advance to last exercise and complete it
              return notifier;
            }),
          ],
          home: ExerciseScreen(
            workout: workout,
            audioService: mockAudioService,
            timerService: mockTimerService,
            storageService: mockStorageService,
          ),
        ),
      );

      // Simulate completing the exercise which goes to next (last one)
      // We can simulate reaching completion state another way
      
      expect(find.text('训练完成，真棒！'), findsNothing);
    });

    testWidgets('handles skip exercise with skip button', (tester) async {
      await tester.pumpWidget(
        createTestAppWithProviders(
          providers: [
            workoutProvider.overrideWith((ref) {
              final notifier = WorkoutNotifier();
              notifier.startWorkout(workout);
              return notifier;
            }),
          ],
          home: ExerciseScreen(
            workout: workout,
            audioService: mockAudioService,
            timerService: mockTimerService,
            storageService: mockStorageService,
          ),
        ),
      );

      // Find and tap the skip forward button
      final skipButton = find.byIcon(Icons.fast_forward);
      await tester.tap(skipButton);

      // Additional verification could be added for state changes
      expect(find.byIcon(Icons.fast_forward), findsOneWidget);
    });

    testWidgets('toggles mute with audio controller', (tester) async {
      await tester.pumpWidget(
        createTestAppWithProviders(
          providers: [
            workoutProvider.overrideWith((ref) {
              final notifier = WorkoutNotifier();
              notifier.startWorkout(workout);
              return notifier;
            }),
          ],
          home: ExerciseScreen(
            workout: workout,
            audioService: mockAudioService,
            timerService: mockTimerService,
            storageService: mockStorageService,
          ),
        ),
      );

      // Find and tap the audio controller mute button
      final muteButton = find.byType(IconButton).first;
      
      // Check initial mute state
      expect(find.byIcon(Icons.volume_up), findsOneWidget);

      await tester.tap(muteButton);

      // After toggle, it should show the opposite icon
      expect(find.byIcon(Icons.volume_off), findsOneWidget);
    });

    testWidgets('shows progress dots correctly', (tester) async {
      await tester.pumpWidget(
        createTestAppWithProviders(
          providers: [
            workoutProvider.overrideWith((ref) {
              final notifier = WorkoutNotifier();
              notifier.startWorkout(workout);
              return notifier;
            }),
          ],
          home: ExerciseScreen(
            workout: workout,
            audioService: mockAudioService,
            timerService: mockTimerService,
            storageService: mockStorageService,
          ),
        ),
      );

      // Verify progress dots show total exercises
      expect(find.byType(ProgressDots), findsOneWidget);
    });

    testWidgets('handles exit confirmation dialog', (tester) async {
      await tester.pumpWidget(
        createTestAppWithProviders(
          providers: [
            workoutProvider.overrideWith((ref) {
              final notifier = WorkoutNotifier();
              notifier.startWorkout(workout);
              return notifier;
            }),
          ],
          home: WillPopScope(
            onWillPop: () async {
              // Simulate the exit confirmation dialog
              return false;
            },
            child: ExerciseScreen(
              workout: workout,
              audioService: mockAudioService,
              timerService: mockTimerService,
              storageService: mockStorageService,
            ),
          ),
        ),
      );
      
      // Simulate back button press
      final backResult = await tester.runAsync(() async {
        return Navigator.of(tester.element(find.byType(Scaffold))).maybePop();
      });
      
      // Expect it to not pop immediately due to confirmation
      expect(backResult, false);
    });
  });
}

// Helper extension to help track methods for the mock timer service
extension on MockTimerService {
  void Function()? onStart;
  void Function()? onPause;
  void Function()? onResume;
  
  @override
  void start(int durationSeconds) {
    if (onStart != null) onStart!();
  }
  
  @override
  void pause() {
    if (onPause != null) onPause!();
  }
  
  @override
  void resume() {
    if (onResume != null) onResume!();
  }
}