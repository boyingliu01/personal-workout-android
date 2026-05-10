import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:runner_app/screens/workout_complete_screen.dart';
import 'package:runner_app/models/workout_session.dart';
import 'package:runner_app/models/workout_type.dart';
import 'package:runner_app/services/audio_service.dart';

class MockAudioService extends Mock implements AudioService {}

void main() {
  group('WorkoutCompleteScreen', () {
    testWidgets('displays completion message and stats', (tester) async {
      final mockAudio = MockAudioService();
      when(() => mockAudio.isMuted).thenReturn(false);
      when(() => mockAudio.announceWorkoutComplete())
          .thenAnswer((_) => Future.value());

      final session = WorkoutSession(
        id: 'test', workoutId: 'warmup', workoutName: '跑前动态热身',
        workoutType: WorkoutType.warmup,
        startTime: DateTime.now().subtract(const Duration(minutes: 12)),
        endTime: DateTime.now(), completedExercises: 12, totalExercises: 12,
        status: WorkoutStatus.completed,
      );

      await tester.pumpWidget(
        MaterialApp(
          home: WorkoutCompleteScreen(
            session: session,
            audioService: mockAudio,
          ),
        ),
      );
      expect(find.text('训练完成，真棒！'), findsOneWidget);
    });
  });
}
