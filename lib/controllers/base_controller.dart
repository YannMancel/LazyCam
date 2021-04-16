import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class _BaseController {
  String get name;
}

abstract class BaseController<T> extends StateNotifier<T>
    implements _BaseController {
  BaseController(T value) : super(value);

  @override
  String get name;

  @override
  String toString() => '[controller: $name, state $state]';
}
