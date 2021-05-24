import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cycle.freezed.dart';

@freezed
class Cycle with _$Cycle {
  const factory Cycle({
    @Default(0) int id,
    @Default(const Duration(minutes: 1, seconds: 30)) Duration time,
    @Default(0) int tempo,
    @Default(Duration.zero) Duration pause,
    @Default(1) int repeat,
  }) = _Cycle;
}
