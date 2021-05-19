import '../extensions/extensions_link.dart';
import '../models/models_link.dart';
import 'controllers_link.dart';

// -----------------------------------------------------------------------------
// Abstract class
// -----------------------------------------------------------------------------
abstract class TimerController extends BaseController<Result<Duration>> {
  TimerController({required Result<Duration> state}) : super(state: state);

  static const kName = 'TimeProvider';

  @override
  String get name => TimerController.kName;

  //int get seconds;
  //int get minutes;
  //set minutes(String minutes);
  //void decrement();
  //void increment();
}

// -----------------------------------------------------------------------------
// Implementation
// -----------------------------------------------------------------------------
class TimerControllerImpl extends TimerController {
  TimerControllerImpl({
    required Duration initialValue,
  })   : _lastData = initialValue,
        super(state: Result.data(value: initialValue));

  Duration _lastData;

  // @override
  // int get seconds => state.dataOrThrow.inSeconds;

  // @override
  // int get minutes => state.dataOrThrow.inMinutes;

  // @override
  // set seconds(String seconds) {
  //   // TODO: implement seconds
  // }

  //@override
  //int get seconds {
  //  if (state >= 60) return '59';
  //  if (state >= 10) return '$state';
  //  return '$state'.padLeft(1, '0');
  //
  //}

// @override
// void input({
//   required String minutes,
//   required String seconds,
// }) {
//   // TODO: add logic
//   //state = value.isNotEmpty ? int.parse(value) : 0;
// }

// @override
// void decrement() {
//   if (state.inSeconds == 0) return;
//   state = Duration(seconds: state.inSeconds - 1);
// }

// // TODO: check digit
// @override
// void increment() => state = Duration(seconds: state.inSeconds + 1);

  @override
  set state(Result<Duration> value) {
    if (value.isData) _lastData = value.dataOrThrow;
    super.state = value;
  }
}
