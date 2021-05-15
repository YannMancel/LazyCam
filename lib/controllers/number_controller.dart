import 'controllers_link.dart';

// -----------------------------------------------------------------------------
// Abstract class
// -----------------------------------------------------------------------------
abstract class NumberController extends BaseController<int> {
  NumberController({required int state}) : super(state: state);

  static const kName = 'NumberProvider';

  @override
  String get name => NumberController.kName;

  set decrement(String value);
  set increment(String value);
}

// -----------------------------------------------------------------------------
// Implementation
// -----------------------------------------------------------------------------
class NumberControllerImpl extends NumberController {
  NumberControllerImpl({required int state}) : super(state: state);

  @override
  set decrement(String value) {
    if (value.isEmpty || value == '0') return;

    state--;
  }

  @override
  set increment(String value) {
    if (value.isEmpty) {
      state = 1;
      return;
    }

    state++;
  }
}
