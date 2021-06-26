import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'timer_state.freezed.dart';

@freezed
class TimerState with _$TimerState {
  const factory TimerState.initial({
    @Default(Duration.zero) Duration duration,
  }) = _Initial;

  const factory TimerState.start({
    @Default(Duration.zero) Duration duration,
  }) = _Start;

  const factory TimerState.pause({
    @Default(Duration.zero) Duration duration,
  }) = _Pause;

  const factory TimerState.stop({
    @Default(Duration.zero) Duration duration,
  }) = _Stop;
}
