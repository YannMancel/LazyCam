import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'camera_state.freezed.dart';

@freezed
class CameraState with _$CameraState {
  const factory CameraState.initial({
    @Default(true) bool isFirstCamera,
  }) = _CameraStateInitial;

  const factory CameraState.setup({
    @Default(true) bool isFirstCamera,
  }) = _CameraStateSetup;

  const factory CameraState.readyPreview({
    @Default(true) bool isFirstCamera,
  }) = _CameraStateReadyPreview;

  const factory CameraState.switchCamera({
    @Default(true) bool isFirstCamera,
  }) = _CameraStateSwitchCamera;

  const factory CameraState.error({
    @Default(true) bool isFirstCamera,
    String? message,
  }) = _CameraStateError;
}
