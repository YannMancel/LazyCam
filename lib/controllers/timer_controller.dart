import 'dart:async' show StreamSubscription;

import '../models/models_link.dart';
import 'base_controller.dart';

abstract class TimerController extends BaseController<TimerState> {
  TimerController({required TimerState state}) : super(state);

  static const kName = 'timerProvider';

  @override
  String get name => TimerController.kName;

  set timer(int timeInSecond);
  void start();
  void stop();
}

class TimerControllerImpl extends TimerController {
  TimerControllerImpl() : super(state: TimerState.initial());

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
    )
        .take(
          _timerInSecond! + 1,
        )
        .listen(
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
