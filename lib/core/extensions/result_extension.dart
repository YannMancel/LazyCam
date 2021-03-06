import 'package:flutter/foundation.dart' show ValueChanged;

import '../../_features.dart';

extension ResultExtension<T> on Result<T> {
  bool get isData => when(
        data: (_) => true,
        error: (_, __) => false,
      );

  T get dataOrThrow => when(
        data: (value) => value,
        error: (_, __) => throw Exception('Result is not data configuration.'),
      );

  void doOnData({required ValueChanged<T> action}) {
    when(
      data: (value) => action(value),
      error: (_, __) => {/* Do nothing here */},
    );
  }
}
