import 'dart:async';

/// Timer service that emits tick events every second.
class TimerService {
  Timer? _timer;
  final _controller = StreamController<int>.broadcast();
  int _seconds = 0;
  bool _running = false;

  Stream<int> get stream => _controller.stream;
  int get seconds => _seconds;
  bool get isRunning => _running;

  void start({int from = 0}) {
    if (_running) return;
    _seconds = from;
    _running = true;
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      _seconds++;
      _controller.add(_seconds);
    });
  }

  void pause() {
    _timer?.cancel();
    _timer = null;
    _running = false;
  }

  void resume() {
    if (!_running) {
      _running = true;
      _timer = Timer.periodic(const Duration(seconds: 1), (_) {
        _seconds++;
        _controller.add(_seconds);
      });
    }
  }

  void reset() {
    pause();
    _seconds = 0;
    _controller.add(0);
  }

  void stop() {
    pause();
    _seconds = 0;
  }

  void dispose() {
    pause();
    _controller.close();
  }
}
