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
  Duration? _lastDuration;

  StreamSubscription<int>? _stream;

  @override
  set duration(Duration duration) {
    _initialDuration = duration;
    state = TimerState.initial(duration: duration);
  }

  @override
  void start() {
    assert(
      _initialDuration != Duration.zero,
      'initial duration must be greater than 0, you must call duration setter.',
    );

    _stream?.cancel();

    final seed = _initialDuration.inSeconds - 1;
    final count = _initialDuration.inSeconds;

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
    //  assert(isStarted == true, 'timer state must be in start state.');
//
    //  _lastDuration = state.duration;
    //  _stream?.cancel();
    //  state = TimerState.pause();
  }

  @override
  void resume() {
    // TODO: know lastDuration
  }

  @override
  void stop() {
    _stream?.cancel();
    state = TimerState.stop();
  }

  @override
  void reset() => duration = _initialDuration;

  @override
  void dispose() {
    _stream?.cancel();
    super.dispose();
  }

  @visibleForTesting
  bool get isStarted => state.maybeWhen(
        start: (_) => true,
        orElse: () => false,
      );

  // @visibleForTesting
  // bool get isPaused => state.maybeWhen(
  //   pause: (_) => true,
  //   orElse: () => false,
  // );
}
