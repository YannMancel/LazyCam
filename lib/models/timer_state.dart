import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'timer_state.freezed.dart';

@freezed
class TimerState with _$TimerState {
  const factory TimerState.initial({
    @Default(Duration.zero) Duration duration,
  }) = _TimerStateInitial;

  const factory TimerState.start({
    @Default(Duration.zero) Duration duration,
  }) = _TimerStateStart;

  const factory TimerState.stop({
    @Default(Duration.zero) Duration duration,
  }) = _TimerStateStop;
}
