import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cycle.freezed.dart';

@freezed
class Cycle with _$Cycle {
  const factory Cycle({
    @Default(0) int id,
    @Default(90) int timeInSecond,
    @Default(0) int tempo,
    @Default(0) int pauseInSecond,
  }) = _Cycle;
}
