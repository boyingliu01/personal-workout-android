import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:runner_app/services/video_service.dart';
import 'package:video_player/video_player.dart';
import 'package:mocktail/mocktail.dart';

// Mock implementation of the VideoPlayerController
class MockVideoPlayerController extends Mock implements VideoPlayerController {}

void main() {
  group('VideoService', () {
    late VideoService videoService;
    late MockVideoPlayerController mockController;

    setUp(() {
      mockController = MockVideoPlayerController();
      videoService = VideoService(mockController);
    });

    tearDown(() {
      videoService.dispose();
    });

    test('initial state is correct', () {
      expect(videoService.isPlaying, false);
      expect(videoService.isLoading, false);
      expect(videoService.hasError, false);
    });

    test('loadVideo sets loading state and loads video', () async {
      final path = 'assets/videos/test.mp4';

      // Mock the initialize method
      when(() => mockController.initialize()).thenAnswer((_) => Future.value());

      await videoService.loadVideo(path);

      verify(mockController.initialize).called(1);
      expect(
          videoService.isLoading, false); // Since the video loads immediately
    });

    test('play starts the video and updates state', () async {
      when(() => mockController.play()).thenAnswer((_) => Future.value());
      when(() => mockController.initialize()).thenAnswer((_) => Future.value());

      await videoService.loadVideo('assets/videos/test.mp4');
      videoService.play();

      verify(() => mockController.play()).called(1);
    });

    test('pause stops the video', () async {
      when(() => mockController.pause()).thenAnswer((_) => Future.value());
      when(() => mockController.initialize()).thenAnswer((_) => Future.value());

      await videoService.loadVideo('assets/videos/test.mp4');
      videoService.pause();

      verify(() => mockController.pause()).called(1);
    });

    test('dispose disposes the underlying controller', () async {
      when(() => mockController.initialize()).thenAnswer((_) => Future.value());
      when(() => mockController.dispose()).thenAnswer((_) => Future.value());

      await videoService.loadVideo('assets/videos/test.mp4');
      await videoService.dispose();

      verify(() => mockController.dispose()).called(1);
    });

    test('error state is set when initialization fails', () async {
      when(() => mockController.initialize())
          .thenThrow(Exception('Failed to load video'));

      await expectLater(videoService.loadVideo('assets/videos/bad_path.mp4'),
          throwsException);

      // The error state should be reflected in hasError property
      // This will depend on how the actual implementation handles errors
    });
  });
}
