import 'dart:async' show StreamSubscription;

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

  void start();
  void stop();
}

// -----------------------------------------------------------------------------
// Implementation
// -----------------------------------------------------------------------------
class ChronometerControllerImpl extends ChronometerController {
  ChronometerControllerImpl({
    required Duration initialDuration,
  })   : _initialDuration = initialDuration,
        super(state: TimerState.initial(duration: initialDuration));

  final Duration _initialDuration;

  StreamSubscription<int>? _stream;

  @override
  void start() {
    assert(_initialDuration != Duration.zero, 'initial duration > O');

    _stream?.cancel();

    _stream = Stream.periodic(
      const Duration(seconds: 1),
      (x) => _initialDuration.inSeconds - x,
    )
        .take(
      _initialDuration.inSeconds + 1,
    )
        .listen(
      (value) {
        state = TimerState.start(
          duration: Duration(seconds: value),
        );
      },
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
