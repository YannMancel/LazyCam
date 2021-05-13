import 'package:flutter/material.dart' show Image;

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stream_state.freezed.dart';

@freezed
class StreamState with _$StreamState {
  const factory StreamState.initial({
    @Default(<Image>[]) List<Image> images,
  }) = _Initial;

  const factory StreamState.recordDuringTimer({
    @Default(<Image>[]) List<Image> images,
  }) = _RecordDuringTimer;

  const factory StreamState.recordAfterTimer({
    @Default(<Image>[]) List<Image> images,
  }) = _RecordAfterTimer;

  const factory StreamState.stop({
    @Default(<Image>[]) List<Image> images,
  }) = _Stop;

  const factory StreamState.error({
    @Default(<Image>[]) List<Image> images,
    String? message,
  }) = _Error;
}
