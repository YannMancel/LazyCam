import 'package:hooks_riverpod/hooks_riverpod.dart' show ProviderBase;

extension ProviderBaseExtension on ProviderBase {
  String get number =>
      hashCode.toUnsigned(20).toRadixString(16).padLeft(5, '0');
}
