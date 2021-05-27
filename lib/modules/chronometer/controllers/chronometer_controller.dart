import 'dart:async' show StreamSubscription;

import 'package:flutter/foundation.dart' show visibleForTesting;

import '../../../core/core.dart';
import '../chronometer.dart';

// -----------------------------------------------------------------------------
// Abstract class
// -----------------------------------------------------------------------------
abstract class ChronometerController extends BaseController<TimerState> {
  ChronometerController({required TimerState state}) : super(state: state);

  static const kName = 'ChronometerProvider';

  @override
  String get name => ChronometerController.kName;

  set duration(Duration duration);
  void start();
  void pause();
  void resume();
  void stop();
  void reset();
}

// -----------------------------------------------------------------------------
// Implementation
// -----------------------------------------------------------------------------
class ChronometerControllerImpl extends ChronometerController {
  ChronometerControllerImpl() : super(state: TimerState.initial());

  Duration _initialDuration = Duration.zero;
  StreamSubscription<int>? _stream;

  @override
  set duration(Duration duration) {
    _initialDuration = duration;
    state = TimerState.initial(duration: duration);
  }

  @override
  void start() {
    late int seed;
    late int count;

    state.maybeWhen(
      pause: (duration) {
        seed = duration.inSeconds - 1;
        count = duration.inSeconds;
      },
      orElse: () {
        assert(
          _initialDuration != Duration.zero,
          ' initial duration must be greater than 0, '
          'you must call duration setter.',
        );

        seed = _initialDuration.inSeconds - 1;
        count = _initialDuration.inSeconds;
      },
    );

    _stream?.cancel();

    _stream = Stream.periodic(
      const Duration(seconds: 1),
      (x) => seed - x,
    ).take(count).listen(
      (value) {
        state = TimerState.start(
          duration: Duration(seconds: value),
        );
      },
      onDone: stop,
    );
  }

  @override
  void pause() {
    assert(isStarted == true, 'timer state must be in start state.');

    _stream?.cancel();
    state = TimerState.pause(duration: state.duration);
  }

  @override
  void resume() {
    assert(isPaused == true, 'timer state must be in pause state.');

    start();
  }

  @override
  void stop() {
    _stream?.cancel();
    state = TimerState.stop();
  }

  @override
  void reset() {
    _stream?.cancel();
    duration = _initialDuration;
  }

  @override
  void dispose() {
    _stream?.cancel();
    super.dispose();
  }

  @visibleForTesting
  bool get isStarted {
    return state.maybeWhen(
      start: (_) => true,
      orElse: () => false,
    );
  }

  @visibleForTesting
  bool get isPaused {
    return state.maybeWhen(
      pause: (_) => true,
      orElse: () => false,
    );
  }
}
