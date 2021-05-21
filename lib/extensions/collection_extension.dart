import 'package:flutter/foundation.dart' show ValueSetter;

extension ListExtension<T> on List<T> {
  List<T> apply({required ValueSetter<List<T>> actionOnItself}) {
    actionOnItself(this);
    return this;
  }
}
