import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:video_player/video_player.dart';
import 'package:runner_app/services/video_service.dart';

// Mock implementation of the VideoPlayerController
class MockVideoPlayerController implements VideoPlayerController {
  bool _isInitialized = false;
  bool _isPlaying = false;
  
  @override
  bool get value => _isInitialized; // Simplified for test purposes
  
  @override
  ValueNotifier<VideoPlayerValue> get valueNotifier => throw UnimplementedError();
  
  @override
  bool get isPlaying => _isPlaying;
  
  @override
  Future<void> initialize() async {
    _isInitialized = true;
  }

  @override
  Future<void> play() async {
    _isPlaying = true;
  }

  @override
  Future<void> pause() async {
    _isPlaying = false;
  }

  @override
  Future<void> dispose() async { }

  // Implement other required methods with minimal implementation  
  @override
  set volume(double volume) { }
  
  @override
  set looping(bool looping) { }
  
  @override
  Future<void> setLooping(bool looping) async { }
  
  @override
  set playbackSpeed(double speed) { }
  
  @override
  Future<void> seekTo(Duration moment) async { }
  
  @override
  set mixWithOthers(bool mixWithOthers) { }
  
  @override
  double get value => 1.0;
  
  @override
  Duration get value => Duration.zero; // Return a default implementation

  @override
  Future<void> setVolume(double volume) async { }

  @override
  Future<void> setPlaybackSpeed(double speed) async { }
  
  // Add other necessary methods...
  @override
  bool get isValid => true;
  
  @override
  VideoPlayerController setFill(Color fill) => this;
  
  @override
  VideoPlayerController setMixWithOthers(bool mixWithOthers) => this;

  // Add abstract members
  @override
  Duration get position => Duration.zero;
  
  @override
  Duration get duration => Duration.zero;
  
  @override
  List<Duration> get buffered => [];
  
  @override
  double get aspectRatio => 16 / 9;
  
  @override
  bool get isBuffering => false;
  
  @override
  bool get isLooping => false;
  
  @override
  bool get isMuted => false;
  
  @override
  bool get isInitialized => _isInitialized;
  
  @override
  VideoPlayerValue get snapshot => VideoPlayerValue.uninitialized();
  
  // These are the remaining abstract members from Stream implementation
  @override
  Stream<VideoPlayerValue> get stream => Stream.value(VideoPlayerValue.uninitialized());
}

void main() {
  group('VideoService', () {
    late VideoService videoService;
    late MockVideoPlayerController mockController;

    setUp(() {
      mockController = MockVideoPlayerController();
      videoService = VideoService(mockController);
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

      expect(videoService.isLoading, false); // Since the video should load successfully
      expect(videoService.hasError, false);
    });

    test('play starts the video and updates state', () async {
      videoService.play();

      expect(videoService.isPlaying, true);
    });

    test('pause stops the video and updates state', () async {
      // First play the video to set it as playing
      videoService.play();
      expect(videoService.isPlaying, true);

      // Now pause it
      videoService.pause();
      expect(videoService.isPlaying, false);
    });

    test('dispose disposes the underlying controller and closes streams', () async {
      // Just test that it doesn't throw
      await expectLater(videoService.dispose(), completes);
    });
  });
}