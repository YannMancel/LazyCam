import 'package:flutter_riverpod/flutter_riverpod.dart'
    show StateNotifierProvider;

import '../../_features.dart';

final timerProvider = StateNotifierProvider.autoDispose<TimerLogic, TimerState>(
  (_) => TimerLogicImpl(),
  name: TimerLogic.kName,
);
