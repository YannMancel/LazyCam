import 'controllers_link.dart';

// -----------------------------------------------------------------------------
// Abstract class
// -----------------------------------------------------------------------------
abstract class NumberController extends BaseController<int> {
  NumberController({required int state}) : super(state: state);

  static const kName = 'NumberProvider';

  @override
  String get name => NumberController.kName;

  set input(String value);
  void decrement();
  void increment();
}

// -----------------------------------------------------------------------------
// Implementation
// -----------------------------------------------------------------------------
class NumberControllerImpl extends NumberController {
  NumberControllerImpl({required int state}) : super(state: state);

  @override
  set input(String value) {
    state = value.isNotEmpty ? int.parse(value) : 0;
  }

  @override
  void decrement() {
    if (state == 0) return;
    state--;
  }

  @override
  void increment() => state++;
}
