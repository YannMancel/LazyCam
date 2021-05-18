import 'package:flutter/foundation.dart' show ValueChanged;

import '../models/models_link.dart';

extension ResultExtension<T> on Result<T> {
  bool get isData => this.when(
        data: (_) => true,
        error: (_, __) => false,
      );

  T get dataOrThrow => this.when(
        data: (value) => value,
        error: (_, __) => throw Exception('Result is not data configuration.'),
      );

  void doOnData({required ValueChanged<T> action}) {
    this.when(
      data: (value) => action(value),
      error: (_, __) => {/* Do nothing here */},
    );
  }
}
