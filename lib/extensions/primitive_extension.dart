import 'dart:math' show pow;

extension IntExtension on int {
  bool isInValidRange({required int digit}) => this < pow(10, digit);
}
