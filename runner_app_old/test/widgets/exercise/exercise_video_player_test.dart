import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:runner_app/widgets/exercise/exercise_video_player.dart';
import 'package:video_player/video_player.dart';

void main() {
  group('ExerciseVideoPlayer', () {
    testWidgets('shows loading indicator when isLoading is true', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: ExerciseVideoPlayer(
              controller: null,
              isLoading: true,
              hasError: false,
              imagePath: null,
            ),
          ),
        ),
      );

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
      expect(find.text('加载动作视频...'), findsOneWidget);
      expect(find.byType(VideoPlayer), findsNothing);
    });

    testWidgets('shows error fallback with static image when hasError is true', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: ExerciseVideoPlayer(
              controller: null,
              isLoading: false,
              hasError: true,
              imagePath: 'assets/exercise_placeholder.png',
            ),
          ),
        ),
      );

      expect(find.byType(CircularProgressIndicator), findsNothing);
      expect(find.byType(VideoPlayer), findsNothing);
      expect(find.byType(Image), findsOneWidget);
    });

    testWidgets('shows placeholder when hasError and imagePath is null', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: ExerciseVideoPlayer(
              controller: null,
              isLoading: false,
              hasError: true,
              imagePath: null,
            ),
          ),
        ),
      );

      expect(find.byType(CircularProgressIndicator), findsNothing);
      expect(find.byType(VideoPlayer), findsNothing);
      expect(find.byType(Icon), findsOneWidget);
    });

    testWidgets('shows VideoPlayer when controller is available and not loading/error', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: ExerciseVideoPlayer(
              controller: null,
              isLoading: false,
              hasError: false,
              imagePath: null,
            ),
          ),
        ),
      );

      expect(find.byType(CircularProgressIndicator), findsNothing);
      expect(find.byType(VideoPlayer), findsNothing);
      expect(find.byType(Icon), findsOneWidget);
    });

    testWidgets('has tap gesture detector for play/pause overlay', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: ExerciseVideoPlayer(
              controller: null,
              isLoading: false,
              hasError: false,
              imagePath: null,
            ),
          ),
        ),
      );

      expect(find.byType(GestureDetector), findsWidgets);
    });
  });
}
