import 'dart:async' show StreamSubscription;

import '../models/models_link.dart';
import 'base_controller.dart';

abstract class TimerController extends BaseController<TimerState> {
  TimerController({required TimerState state}) : super(state);

  static const kName = 'timerProvider';

  @override
  String get name => TimerController.kName;

  void start({required int timeInSecond});
  void stop();
}

class TimerControllerImpl extends TimerController {
  TimerControllerImpl() : super(state: TimerState.initial());

  StreamSubscription<int>? _stream;

  @override
  void start({required int timeInSecond}) {
    assert(timeInSecond > 0, 'timerInSecond > O');

    _stream?.cancel();

    _stream = Stream.periodic(
      const Duration(seconds: 1),
      (x) => timeInSecond - x,
    )
        .take(
          timeInSecond + 1,
        )
        .listen(
          (value) => state = TimerState.start(seconds: value),
          onDone: stop,
        );
  }

  @override
  void stop() {
    _stream?.cancel();
    state = TimerState.stop();
  }

  @override
  void dispose() {
    _stream?.cancel();
    super.dispose();
  }
}
