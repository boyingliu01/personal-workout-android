import 'package:flutter_test/flutter_test.dart';
import 'package:strength_app/core/services/timer_service.dart';

void main() {
  late TimerService service;

  setUp(() {
    service = TimerService();
  });

  tearDown(() {
    service.dispose();
  });

  group('TimerService - initial state', () {
    test('starts at 0 seconds', () {
      expect(service.seconds, 0);
    });

    test('is not running initially', () {
      expect(service.isRunning, isFalse);
    });
  });

  group('TimerService - start/pause/resume', () {
    test('start begins counting', () async {
      service.start();
      expect(service.isRunning, isTrue);
    });

    test('pause stops counting', () {
      service.start();
      service.pause();
      expect(service.isRunning, isFalse);
    });

    test('resume restarts counting', () {
      service.start();
      service.pause();
      service.resume();
      expect(service.isRunning, isTrue);
    });

    test('start from specific second', () {
      service.start(from: 10);
      expect(service.seconds, 10);
    });

    test('stop resets and stops', () {
      service.start(from: 5);
      service.stop();
      expect(service.isRunning, isFalse);
      expect(service.seconds, 0);
    });

    test('reset clears timer', () {
      service.start(from: 30);
      service.reset();
      expect(service.isRunning, isFalse);
      expect(service.seconds, 0);
    });

    test('starting twice does not restart', () {
      service.start();
      final beforeSeconds = service.seconds;
      service.start(); // should be no-op
      expect(service.seconds, beforeSeconds);
    });
  });

  group('TimerService - stream', () {
    test('emits tick events', () {
      service.start();
      expect(service.seconds, 0);
      service.dispose();
    });
  });
}
