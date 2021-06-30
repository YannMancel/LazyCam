import 'package:flutter/foundation.dart' show visibleForTesting;

import '../../../_features.dart';

// -----------------------------------------------------------------------------
// Abstract class
// -----------------------------------------------------------------------------
abstract class NumberLogic extends BaseController<Result<int>> {
  NumberLogic({required Result<int> state}) : super(state: state);

  static const kName = 'NumberLogic';

  @override
  String get name => NumberLogic.kName;

  set digit(int value);
  set input(String value);
  void decrement();
  void increment();
}

// -----------------------------------------------------------------------------
// Implementation
// -----------------------------------------------------------------------------
class NumberLogicImpl extends NumberLogic {
  NumberLogicImpl({
    required int value,
  })   : _lastData = value,
        super(state: Result.data(value: value));

  int _lastData;
  int? _digit;

  @override
  set digit(int value) => _digit = value;

  @override
  set input(String value) {
    if (_digit == null) {
      error = 'Digit is null. The digit setter must be called.';
      return;
    }

    if (value.isEmpty) {
      state = const Result.data(value: 0);
      return;
    }

    final newValue = int.parse(value);
    if (!newValue.isInValidRange(digit: _digit!)) {
      error = 'The requested value is outside the validity range.';
      return;
    }
    state = Result.data(value: newValue);
  }

  @override
  void decrement() {
    state.when(
      data: (value) {
        if (value == 0) {
          error = 'The minimal value is equal to 0.';
          return;
        }
        state = Result.data(value: value - 1);
      },
      error: (_, lastData) => state = Result.data(value: lastData ?? 0),
    );
  }

  @override
  void increment() {
    if (_digit == null) {
      error = 'Digit is null. The digit setter must be called.';
      return;
    }

    state.when(
      data: (value) {
        final nextValue = value + 1;
        if (!nextValue.isInValidRange(digit: _digit!)) {
          error = 'The requested value is outside the validity range.';
          return;
        }
        state = Result.data(value: nextValue);
      },
      error: (_, lastData) => state = Result.data(value: lastData ?? 1),
    );
  }

  @override
  set state(Result<int> value) {
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
