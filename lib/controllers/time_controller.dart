import 'package:flutter/foundation.dart' show visibleForTesting;

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

  void setDigits({
    required int minutes,
    required int seconds,
  });
  set seconds(String value);
  set minutes(String value);
  void decrement();
  void increment();
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

  int? _minuteDigit;
  int? _secondDigit;

  @override
  void setDigits({required int minutes, required int seconds}) {
    _minuteDigit = minutes;
    _secondDigit = seconds;
  }

  @override
  set seconds(String value) {
    if (_secondDigit == null) {
      error = 'Second digit is null. The digits setter must be called.';
      return;
    }

    if (value.isEmpty) {
      state = Result.data(
        value: Duration(
          minutes: _lastData.inMinutes,
          seconds: 0,
        ),
      );
      return;
    }

    final newValue = int.parse(value);

    // TODO error if second >= 60

    if (!newValue.isInValidRange(digit: _secondDigit!)) {
      error = 'The requested value is outside the validity range.';
      return;
    }
    state = Result.data(
      value: Duration(
        minutes: _lastData.inMinutes,
        seconds: newValue,
      ),
    );
  }

  @override
  set minutes(String value) {
    if (_minuteDigit == null) {
      error = 'Minute digit is null. The digits setter must be called.';
      return;
    }

    if (value.isEmpty) {
      state = Result.data(
        value: Duration(
          minutes: 0,
          seconds: _lastData.secondsSubtractedWithMinutes,
        ),
      );
      return;
    }

    final newValue = int.parse(value);
    if (!newValue.isInValidRange(digit: _minuteDigit!)) {
      error = 'The requested value is outside the validity range.';
      return;
    }
    state = Result.data(
      value: Duration(
        minutes: newValue,
        seconds: _lastData.secondsSubtractedWithMinutes,
      ),
    );
  }

  @override
  void decrement() {
    state.when(
      data: (value) {
        if (value.inSeconds == 0) {
          error = 'The minimal value is equal to 0.';
          return;
        }
        state = Result.data(value: Duration(seconds: value.inSeconds - 1));
      },
      error: (_, lastData) =>
          state = Result.data(value: lastData ?? Duration.zero),
    );
  }

  @override
  void increment() {
    // TODO: implement increment
  }

  @override
  set state(Result<Duration> value) {
    if (value.isData) _lastData = value.dataOrThrow;
    super.state = value;
  }

  @visibleForTesting
  set error(String message) {
    state = Result.error(
      message: message,
      lastData: _lastData,
    );
  }
}
