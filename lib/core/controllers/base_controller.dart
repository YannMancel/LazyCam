import 'package:flutter_riverpod/flutter_riverpod.dart' show StateNotifier;

abstract class BaseController<T> extends StateNotifier<T> {
  BaseController({required T state}) : super(state);

  String get name;

  @override
  String toString() => '[controller: $name, state $state]';
}
