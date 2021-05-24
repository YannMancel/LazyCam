import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../training.dart';

part 'training.freezed.dart';

@freezed
class Training with _$Training {
  const factory Training({
    @Default('Training') String name,
    @Default(const <Cycle>[Cycle()]) List<Cycle> cycles,
  }) = _Training;
}
