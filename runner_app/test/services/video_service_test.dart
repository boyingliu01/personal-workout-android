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
      
      // Setup common default mock return values
      when(() => mockController.initialize()).thenAnswer((_) async {});
      when(() => mockController.dispose()).thenAnswer((_) async {});
      when(() => mockController.play()).thenAnswer((_) async {});
      when(() => mockController.pause()).thenAnswer((_) async {});
      when(() => mockController.value).thenReturn(VideoPlayerValue(isInitialized: true, position: const Duration(seconds: 0), duration: const Duration(seconds: 30)));
    });

    tearDown(() async {
      await videoService.dispose();
    });

    test('initial state is correct', () {
      expect(videoService.isPlaying, false);
      expect(videoService.isLoading, false);
      expect(videoService.hasError, false);
    });

    test('loadVideo sets loading state and loads video', () async {
      final path = 'assets/videos/test.mp4';

      await videoService.loadVideo(path);

      verify(() => mockController.initialize()).called(1);
      expect(videoService.isLoading, false); // Since the video loads successfully
    });

    test('play starts the video and updates state', () async {
      // Initialize controller first
      final mockControllerNew = MockVideoPlayerController();
      when(() => mockControllerNew.initialize()).thenAnswer((_) async {});
      when(() => mockControllerNew.play()).thenAnswer((_) async {});
      when(() => mockControllerNew.value).thenReturn(VideoPlayerValue(isInitialized: true, position: const Duration(seconds: 0), duration: const Duration(seconds: 30)));
      
      videoService = VideoService(mockControllerNew);
      
      await videoService.loadVideo('assets/videos/test.mp4');
      videoService.play();

      verify(() => mockControllerNew.play()).called(1);
    });

    test('pause stops the video', () async {
      // Initialize controller first
      final mockControllerNew = MockVideoPlayerController(); 
      when(() => mockControllerNew.initialize()).thenAnswer((_) async {});
      when(() => mockControllerNew.pause()).thenAnswer((_) async {});
      when(() => mockControllerNew.value).thenReturn(VideoPlayerValue(isInitialized: true, position: const Duration(seconds: 0), duration: const Duration(seconds: 30)));
      
      videoService = VideoService(mockControllerNew);
      
      await videoService.loadVideo('assets/videos/test.mp4');
      videoService.pause();

      verify(() => mockControllerNew.pause()).called(1);
    });

    test('dispose disposes the underlying controller', () async {
      // Create a fresh service for this test
      final mockControllerNew = MockVideoPlayerController();
      when(() => mockControllerNew.initialize()).thenAnswer((_) async {});
      when(() => mockControllerNew.dispose()).thenAnswer((_) async {});
      when(() => mockControllerNew.value).thenReturn(VideoPlayerValue(isInitialized: true, position: const Duration(seconds: 0), duration: const Duration(seconds: 30)));
      
      videoService = VideoService(mockControllerNew);
      
      await videoService.loadVideo('assets/videos/test.mp4');
      await videoService.dispose();

      verify(() => mockControllerNew.dispose()).called(1);
    });

    test('error state is set when initialization fails', () async {
      final mockControllerNew = MockVideoPlayerController();
      when(() => mockControllerNew.initialize()).thenThrow(Exception('Failed to load video'));
      when(() => mockControllerNew.value).thenReturn(VideoPlayerValue(isInitialized: false, position: const Duration(seconds: 0), duration: const Duration(seconds: 30)));
      
      videoService = VideoService(mockControllerNew);

      await expectLater(videoService.loadVideo('assets/videos/bad_path.mp4'), 
          throwsException);
    });
  });
}
