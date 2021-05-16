import 'controllers_link.dart';

// -----------------------------------------------------------------------------
// Abstract class
// -----------------------------------------------------------------------------
abstract class TimerController extends BaseController<int> {
  TimerController({required int state}) : super(state: state);

  static const kName = 'TimeProvider';

  @override
  String get name => TimerController.kName;

  void input({
    required String minutes,
    required String seconds,
  });
  void decrement();
  void increment();
}

// -----------------------------------------------------------------------------
// Implementation
// -----------------------------------------------------------------------------
class TimerControllerImpl extends TimerController {
  TimerControllerImpl({required int state}) : super(state: state);

  @override
  void input({
    required String minutes,
    required String seconds,
  }) {
    // TODO: add logic
    //state = value.isNotEmpty ? int.parse(value) : 0;
  }

  @override
  void decrement() {
    if (state == 0) return;

    state--;
  }

  // TODO: check digit
  @override
  void increment() => state++;
}
