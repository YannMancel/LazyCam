import 'dart:async' show StreamSubscription;

import '../models/models_link.dart';
import 'controllers_link.dart';

// -----------------------------------------------------------------------------
// Abstract class
// -----------------------------------------------------------------------------
abstract class ChronometerController extends BaseController<TimerState> {
  ChronometerController({required TimerState state}) : super(state: state);

  static const kName = 'ChronometerProvider';

  @override
  String get name => ChronometerController.kName;

  void start({required int timeInSecond});
  void stop();
}

// -----------------------------------------------------------------------------
// Implementation
// -----------------------------------------------------------------------------
class ChronometerControllerImpl extends ChronometerController {
  ChronometerControllerImpl() : super(state: TimerState.initial());

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
