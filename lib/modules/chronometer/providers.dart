import 'package:flutter_riverpod/flutter_riverpod.dart'
    show StateNotifierProvider;

import 'chronometer.dart';

final timerProvider =
    StateNotifierProvider.autoDispose<ChronometerController, TimerState>(
  (_) => ChronometerControllerImpl(),
  name: ChronometerController.kName,
);
