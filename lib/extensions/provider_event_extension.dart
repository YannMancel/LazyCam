import '../utils/utils_link.dart';

extension ProviderEventExtension on ProviderEvent {
  int get lengthMax {
    return ProviderEvent.values
        .map((e) => e.toString().split('.').last.length)
        .reduce((a, b) => (a < b) ? b : a);
  }

  String get nameInUpperCase => this.toString().split('.').last.toUpperCase();

  String get nameInUpperCaseWithPadRight => nameInUpperCase.padRight(lengthMax);
}
