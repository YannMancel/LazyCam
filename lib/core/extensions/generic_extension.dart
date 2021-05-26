import 'package:flutter/foundation.dart' show ValueSetter;

extension GenericExtension<T> on T {
  T apply({required ValueSetter<T> actionOnItself}) {
    actionOnItself(this);
    return this;
  }
}
