import 'dart:async';

import 'package:flutter_test/flutter_test.dart';

import 'package:runner_app/models/timer_status.dart';
import 'package:runner_app/services/timer_service.dart';

void main() {
  group('TimerService', () {
    late TimerService timerService;
    late List<int> emittedValues;
    late StreamSubscription<int>? subscription;
    late bool onCompleteCalled;

    setUp(() {
      timerService = TimerService();
      emittedValues = [];
      subscription = null;
      onCompleteCalled = false;
    });

    tearDown(() {
      subscription?.cancel();
      timerService.dispose();
    });

    group('REQ-TIMER-001: Start Countdown Timer', () {
      test('@test REQ-TIMER-001 start() sets timer to running status',
          () async {
        timerService.start(10);

        expect(timerService.status, TimerStatus.running);
        expect(timerService.isRunning, true);
      });

      test('@test REQ-TIMER-001 start() begins emitting countdown values',
          () async {
        subscription = timerService.countdownStream.listen((value) {
          emittedValues.add(value);
        });

        timerService.start(5);

        await Future.delayed(const Duration(milliseconds: 1100));

        expect(emittedValues.length, greaterThan(0));
        expect(emittedValues.first, 5);
      });

      test(
          '@test REQ-TIMER-001 start(duration) sets countdown from specified duration',
          () async {
        timerService.start(30);

        expect(timerService.remainingSeconds, 30);
      });

      test(
          '@test REQ-TIMER-001 start() with 0 duration triggers immediate completion',
          () async {
        timerService.setOnComplete(() {
          onCompleteCalled = true;
        });

        timerService.start(0);

        expect(timerService.status, TimerStatus.completed);
        expect(onCompleteCalled, true);
      });
    });

    group('REQ-TIMER-002: Pause Timer', () {
      test('@test REQ-TIMER-002 pause() sets timer to paused status', () async {
        timerService.start(10);
        await Future.delayed(const Duration(milliseconds: 100));

        timerService.pause();

        expect(timerService.status, TimerStatus.paused);
        expect(timerService.isPaused, true);
      });

      test('@test REQ-TIMER-002 pause() stops emitting countdown values',
          () async {
        subscription = timerService.countdownStream.listen((value) {
          emittedValues.add(value);
        });

        timerService.start(10);
        await Future.delayed(const Duration(milliseconds: 1100));

        final countBeforePause = emittedValues.length;

        timerService.pause();
        await Future.delayed(const Duration(milliseconds: 2100));

        expect(emittedValues.length, countBeforePause);
      });

      test('@test REQ-TIMER-002 pause() preserves remaining seconds', () async {
        timerService.start(10);
        await Future.delayed(const Duration(milliseconds: 1100));

        final remainingBeforePause = timerService.remainingSeconds;
        timerService.pause();

        expect(timerService.remainingSeconds, remainingBeforePause);
      });

      test('@test REQ-TIMER-002 pause() when not running has no effect',
          () async {
        timerService.pause();

        expect(timerService.status, TimerStatus.idle);
      });
    });

    group('REQ-TIMER-003: Resume Timer', () {
      test('@test REQ-TIMER-003 resume() sets timer back to running status',
          () async {
        timerService.start(10);
        await Future.delayed(const Duration(milliseconds: 100));
        timerService.pause();

        timerService.resume();

        expect(timerService.status, TimerStatus.running);
        expect(timerService.isRunning, true);
      });

      test('@test REQ-TIMER-003 resume() continues countdown from paused value',
          () async {
        timerService.start(10);
        await Future.delayed(const Duration(milliseconds: 1100));

        final remainingBeforePause = timerService.remainingSeconds;
        timerService.pause();

        timerService.resume();

        expect(timerService.remainingSeconds,
            lessThanOrEqualTo(remainingBeforePause));
      });

      test('@test REQ-TIMER-003 resume() resumes stream emission', () async {
        subscription = timerService.countdownStream.listen((value) {
          emittedValues.add(value);
        });

        timerService.start(10);
        await Future.delayed(const Duration(milliseconds: 1100));

        timerService.pause();
        final countAfterPause = emittedValues.length;

        timerService.resume();
        await Future.delayed(const Duration(milliseconds: 1100));

        expect(emittedValues.length, greaterThan(countAfterPause));
      });

      test('@test REQ-TIMER-003 resume() when not paused has no effect',
          () async {
        timerService.resume();

        expect(timerService.status, TimerStatus.idle);
      });
    });

    group('REQ-TIMER-004: Reset Timer', () {
      test('@test REQ-TIMER-004 reset() sets remaining seconds to 0', () async {
        timerService.start(10);
        await Future.delayed(const Duration(milliseconds: 100));

        timerService.reset();

        expect(timerService.remainingSeconds, 0);
      });

      test('@test REQ-TIMER-004 reset() sets timer to idle status', () async {
        timerService.start(10);
        timerService.pause();

        timerService.reset();

        expect(timerService.status, TimerStatus.idle);
      });

      test('@test REQ-TIMER-004 reset() stops stream emission', () async {
        subscription = timerService.countdownStream.listen((value) {
          emittedValues.add(value);
        });

        timerService.start(10);
        await Future.delayed(const Duration(milliseconds: 1100));

        timerService.reset();
        final countAfterReset = emittedValues.length;

        await Future.delayed(const Duration(milliseconds: 2100));

        expect(emittedValues.length, countAfterReset);
      });
    });

    group('REQ-TIMER-005: Stream Countdown Updates', () {
      test('@test REQ-TIMER-005 countdownStream emits int values every second',
          () async {
        subscription = timerService.countdownStream.listen((value) {
          emittedValues.add(value);
        });

        timerService.start(5);

        await Future.delayed(const Duration(milliseconds: 3100));

        expect(emittedValues.length, greaterThanOrEqualTo(3));
        for (final value in emittedValues) {
          expect(value, isA<int>());
        }
      });

      test('@test REQ-TIMER-005 stream values decrease by 1 each emission',
          () async {
        subscription = timerService.countdownStream.listen((value) {
          emittedValues.add(value);
        });

        timerService.start(5);

        await Future.delayed(const Duration(milliseconds: 2100));

        for (var i = 0; i < emittedValues.length - 1; i++) {
          expect(emittedValues[i + 1], emittedValues[i] - 1);
        }
      });

      test('@test REQ-TIMER-005 stream closes when countdown reaches 0',
          () async {
        final streamCompleter = Completer<bool>();
        subscription = timerService.countdownStream.listen(
          (value) {
            emittedValues.add(value);
          },
          onDone: () {
            streamCompleter.complete(true);
          },
        );

        timerService.start(2);

        final streamClosed = await streamCompleter.future.timeout(
          const Duration(seconds: 5),
          onTimeout: () => false,
        );

        expect(streamClosed, true);
        expect(emittedValues.last, 0);
      });
    });

    group('REQ-TIMER-006: Single Stopwatch Instance', () {
      test('@test REQ-TIMER-006 TimerService uses Stopwatch internally',
          () async {
        timerService.start(5);

        await Future.delayed(const Duration(milliseconds: 1100));

        expect(timerService.elapsedMilliseconds, greaterThan(900));
      });

      test(
          '@test REQ-TIMER-006 same Stopwatch instance used across start/pause/resume',
          () async {
        timerService.start(10);
        await Future.delayed(const Duration(milliseconds: 500));

        timerService.pause();
        await Future.delayed(const Duration(milliseconds: 500));

        timerService.resume();
        await Future.delayed(const Duration(milliseconds: 500));

        expect(timerService.elapsedMilliseconds, greaterThan(1000));
      });
    });

    group('REQ-TIMER-007: Complete Callback', () {
      test(
          '@test REQ-TIMER-007 onComplete callback triggered when countdown reaches 0',
          () async {
        timerService.setOnComplete(() {
          onCompleteCalled = true;
        });

        subscription = timerService.countdownStream.listen((_) {});

        timerService.start(2);

        await Future.delayed(const Duration(milliseconds: 2500));

        expect(onCompleteCalled, true);
        expect(timerService.status, TimerStatus.completed);
      });
    });

    group('REQ-TIMER-008: Get Remaining Seconds', () {
      test(
          '@test REQ-TIMER-008 remainingSeconds getter returns current countdown value',
          () async {
        timerService.start(10);

        expect(timerService.remainingSeconds, 10);

        await Future.delayed(const Duration(milliseconds: 1100));

        expect(timerService.remainingSeconds, lessThan(10));
        expect(timerService.remainingSeconds, greaterThanOrEqualTo(0));
      });
    });

    group('REQ-TIMER-009: Get Current Status', () {
      test('@test REQ-TIMER-009 status getter returns TimerStatus enum',
          () async {
        expect(timerService.status, TimerStatus.idle);

        timerService.start(10);
        expect(timerService.status, TimerStatus.running);

        timerService.pause();
        expect(timerService.status, TimerStatus.paused);

        timerService.reset();
        expect(timerService.status, TimerStatus.idle);
      });

      test(
          '@test REQ-TIMER-009 TimerStatus values include idle/running/paused/completed',
          () async {
        expect(TimerStatus.values, contains(TimerStatus.idle));
        expect(TimerStatus.values, contains(TimerStatus.running));
        expect(TimerStatus.values, contains(TimerStatus.paused));
        expect(TimerStatus.values, contains(TimerStatus.completed));
      });
    });

    group('Edge Cases', () {
      test(
          '@test EC-TIMER-001 start() called when already running resets timer',
          () async {
        subscription = timerService.countdownStream.listen((value) {
          emittedValues.add(value);
        });

        timerService.start(10);
        await Future.delayed(const Duration(milliseconds: 1100));

        emittedValues.clear();
        timerService.start(5);

        await Future.delayed(const Duration(milliseconds: 100));

        expect(timerService.remainingSeconds, 5);
        expect(emittedValues.first, 5);
      });

      test('@test EC-TIMER-002 pause() when not running returns gracefully',
          () async {
        timerService.pause();

        expect(timerService.status, TimerStatus.idle);
        expect(timerService.remainingSeconds, 0);
      });

      test('@test EC-TIMER-003 resume() when not paused returns gracefully',
          () async {
        timerService.start(10);
        await Future.delayed(const Duration(milliseconds: 100));

        timerService.resume();

        expect(timerService.status, TimerStatus.running);
      });

      test('@test EC-TIMER-005 multiple listeners receive same values',
          () async {
        final values1 = <int>[];
        final values2 = <int>[];

        final sub1 = timerService.countdownStream.listen((v) => values1.add(v));
        final sub2 = timerService.countdownStream.listen((v) => values2.add(v));

        timerService.start(5);
        await Future.delayed(const Duration(milliseconds: 2100));

        expect(values1.length, values2.length);
        expect(values1, equals(values2));

        await sub1.cancel();
        await sub2.cancel();
      });
    });
  });
}
