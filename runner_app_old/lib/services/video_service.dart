import 'dart:async';
import 'package:video_player/video_player.dart';

/// Service for video playback management.
///
/// Manages VideoPlayerController lifecycle with single controller at a time.
/// Loads video files, controls playback (play, pause), and implements loading timeout.
///
/// Design Decision: Uses single VideoPlayerController to avoid memory issues
/// Design Decision: 3-second timeout fallback to static image
class VideoService {
  VideoPlayerController? _currentController;

  /// Stream controller for loading state updates
  final StreamController<bool> _loadingController =
      StreamController<bool>.broadcast();

  /// Current playing state
  bool _isPlaying = false;

  /// Current loading state
  bool _isLoading = false;

  /// Current error state
  bool _hasError = false;

  /// Timer for timeout fallback
  Timer? _timeoutTimer;

  /// Stream controller for error state updates
  final StreamController<bool> _errorController =
      StreamController<bool>.broadcast();

  VideoService(VideoPlayerController? initialController) {
    _currentController = initialController;
  }

  /// Factory constructor for production use.
  ///
  /// Creates real VideoPlayerController instances when video path is provided.
  static VideoService create() {
    return VideoService(null);
  }

  /// Stream emitting loading state.
  Stream<bool> get loadingStream => _loadingController.stream;

  /// Stream emitting error state.
  Stream<bool> get errorStream => _errorController.stream;

  /// Current playing state.
  bool get isPlaying => _isPlaying;

  /// Current loading state.
  bool get isLoading => _isLoading;

  /// Current error state.
  bool get hasError => _hasError;

  /// Load video from path and initialize player.
  ///
  /// Sets loading state to true, initializes new controller,
  /// and switches to new video if successful.
  ///
  /// [path]: Path to video file (asset or network)
  ///
  /// Throws exception if video path is invalid or loading fails
  Future<void> loadVideo(String path) async {
    // Set loading states
    _isLoading = true;
    _hasError = false;

    // Emit loading state update
    _loadingController.add(true);

    // Cancel previous timeout if exists
    _timeoutTimer?.cancel();

    // Dispose of existing controller if we already have one
    if (_currentController != null) {
      _currentController!.removeListener(_onVideoStateChanged);
      await _currentController!.dispose();
    }

    // Create new controller
    _currentController = VideoPlayerController.asset(path);

    try {
      // Start timeout timer for fallback (3 seconds as specified in requirements)
      _timeoutTimer = Timer(Duration(seconds: 3), () {
        _isLoading = false;
        _hasError = true;
        _loadingController.add(false);
        _errorController.add(true);
      });

      // Initialize the controller
      await _currentController!.initialize();

      // Cancel timeout timer as video loaded successfully
      _timeoutTimer?.cancel();

      // Update states
      _isLoading = false;
      _hasError = false;
      _loadingController.add(false);
      _errorController.add(false);

      // Listen for changes in video status
      _currentController!.addListener(_onVideoStateChanged);
    } catch (e) {
      // Handle loading error
      _isLoading = false;
      _hasError = true;
      _loadingController.add(false);
      _errorController.add(true);

      // Still throw the error back to caller
      rethrow;
    }
  }

  /// Play the current video.
  ///
  /// Starts video playback if initialized.
  /// Updates playing state and emits change.
  void play() {
    if (_currentController != null) {
      _currentController!.play();
      _isPlaying = true;
    }
  }

  /// Pause the current video.
  ///
  /// Pauses video playback if currently playing.
  /// Updates playing state and emits change.
  void pause() {
    if (_currentController != null) {
      _currentController!.pause();
      _isPlaying = false;
    }
  }

  /// Internal callback for video state changes.
  ///
  /// Updates internal playing state when controller state changes.
  void _onVideoStateChanged() {
    if (_currentController != null) {
      _isPlaying = _currentController!.value.isPlaying;
    }
  }

  /// Dispose resources.
  ///
  /// Disposes the current VideoPlayerController and closes streams.
  /// Must be called when service is no longer needed.
  Future<void> dispose() async {
    _timeoutTimer?.cancel();
    if (_currentController != null) {
      _currentController!.removeListener(_onVideoStateChanged);
      await _currentController!.dispose();
      _currentController = null;
    }
    await _loadingController.close();
    await _errorController.close();
  }
}
