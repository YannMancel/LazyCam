import 'package:flutter_riverpod/flutter_riverpod.dart'
    show StateNotifierProvider;

import 'chronometer.dart';

final timerProvider = StateNotifierProvider.autoDispose
    .family<ChronometerController, TimerState, Duration>(
  (_, duration) => ChronometerControllerImpl(initialDuration: duration),
  name: ChronometerController.kName,
);
