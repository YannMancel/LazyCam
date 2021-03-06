import 'package:flutter/foundation.dart' show visibleForTesting;

import '../../../_features.dart';

// -----------------------------------------------------------------------------
// Abstract class
// -----------------------------------------------------------------------------
abstract class TimeLogic extends BaseController<Result<Duration>> {
  TimeLogic({required Result<Duration> state}) : super(state: state);

  static const kName = 'TimeLogic';

  @override
  String get name => TimeLogic.kName;

  void setDigits({
    required int minutes,
    required int seconds,
  });
  void setWithLastData();
  set seconds(String value);
  set minutes(String value);
  void decrement();
  void increment();
}

// -----------------------------------------------------------------------------
// Implementation
// -----------------------------------------------------------------------------
class TimeLogicImpl extends TimeLogic {
  TimeLogicImpl({
    required Duration value,
  })  : _lastData = value,
        super(state: Result.data(value: value));

  Duration _lastData;

  int? _minuteDigit;
  int? _secondDigit;

  @override
  void setDigits({required int minutes, required int seconds}) {
    _minuteDigit = minutes;
    _secondDigit = seconds;
  }

  @override
  void setWithLastData() => state = Result.data(value: _lastData);

  @override
  set seconds(String value) {
    if (_secondDigit == null) {
      error = 'Second digit is null. The digits setter must be called.';
      return;
    }

    if (value.isEmpty) {
      state = Result.data(
        value: Duration(minutes: _lastData.inMinutes),
      );
      return;
    }

    final newValue = int.parse(value);
    if (newValue >= 60 || !newValue.isInValidRange(digit: _secondDigit!)) {
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
        value: Duration(seconds: _lastData.secondsSubtractedWithMinutes),
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
    if (_minuteDigit == null) {
      error = 'Minute digit is null. The digits setter must be called.';
      return;
    }

    state.when(
      data: (value) {
        final nextValue = Duration(seconds: value.inSeconds + 1);
        if (!nextValue.inMinutes.isInValidRange(digit: _minuteDigit!)) {
          error = 'The requested value is outside the validity range.';
          return;
        }
        state = Result.data(value: nextValue);
      },
      error: (_, lastData) => state = Result.data(
        value: Duration(seconds: lastData?.inSeconds ?? 1),
      ),
    );
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
