import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'timer_state.freezed.dart';

@freezed
class TimerState with _$TimerState {
  const factory TimerState.initial({
    @Default(0) int seconds,
  }) = _TimerStateInitial;

  const factory TimerState.start({
    @Default(0) int seconds,
  }) = _TimerStateStart;

  const factory TimerState.stop({
    @Default(0) int seconds,
  }) = _TimerStateStop;
}
