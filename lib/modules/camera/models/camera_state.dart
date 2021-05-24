import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'camera_state.freezed.dart';

@freezed
class CameraState with _$CameraState {
  const factory CameraState.initial({
    @Default(true) bool isFirstCamera,
  }) = _Initial;

  const factory CameraState.setup({
    @Default(true) bool isFirstCamera,
  }) = _Setup;

  const factory CameraState.readyPreview({
    @Default(true) bool isFirstCamera,
  }) = _ReadyPreview;

  const factory CameraState.switchCamera({
    @Default(true) bool isFirstCamera,
  }) = _SwitchCamera;

  const factory CameraState.error({
    @Default(true) bool isFirstCamera,
    String? message,
  }) = _Error;
}
