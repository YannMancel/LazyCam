import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
class Result<T> with _$Result<T> {
  const factory Result.data({
    required T value,
  }) = _Data<T>;

  const factory Result.error({
    required String message,
  }) = _Error<T>;
}
