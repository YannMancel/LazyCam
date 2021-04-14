import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/timer_state.dart';

abstract class _TimerController {
  set timer(int timeInSecond);
  void start();
  void stop();
}

class TimerController extends StateNotifier<TimerState>
    implements _TimerController {
  TimerController() : super(TimerState.initial());

  StreamSubscription<int>? _stream;
  int? _timerInSecond;

  @override
  set timer(int timeInSecond) => _timerInSecond = timeInSecond;

  @override
  void start() {
    _stream?.cancel();

    if (_timerInSecond == null) {
      throw Exception('timerInSecond is null. Set timer before start call.');
    }

    _stream = Stream.periodic(
      const Duration(seconds: 1),
      (x) => _timerInSecond! - x,
    ).take(_timerInSecond! + 1).listen(
          (value) => state = TimerState.start(seconds: value),
          onDone: stop,
        );
  }

  @override
  void stop() {
    _timerInSecond = null;
    _stream?.cancel();
    state = TimerState.stop();
  }

  @override
  void dispose() {
    _stream?.cancel();
    super.dispose();
  }
}
