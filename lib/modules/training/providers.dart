import 'package:flutter_riverpod/flutter_riverpod.dart'
    show StateNotifierProvider;

import 'training.dart';

final trainingProvider =
    StateNotifierProvider.autoDispose<TrainingController, Training>(
  (_) => TrainingControllerImpl(),
  name: TrainingController.kName,
);

/// Manages the [Cycle.time].
final timeProvider = StateNotifierProvider.autoDispose
    .family<TimeController, Result<Duration>, Cycle>(
  (ref, cycle) => TimeControllerImpl(initialValue: cycle.time),
  name: '${TimeController.kName}.time',
);

/// Manages the [Cycle.tempo].
final tempoProvider = StateNotifierProvider.autoDispose
    .family<NumberController, Result<int>, Cycle>(
  (ref, cycle) => NumberControllerImpl(initialValue: cycle.tempo),
  name: '${NumberController.kName}.tempo',
);

/// Manages the [Cycle.pause].
final pauseProvider = StateNotifierProvider.autoDispose
    .family<TimeController, Result<Duration>, Cycle>(
  (ref, cycle) => TimeControllerImpl(initialValue: cycle.pause),
  name: '${TimeController.kName}.pause',
);

/// Manages the [Cycle.repeat].
final repeatProvider = StateNotifierProvider.autoDispose
    .family<NumberController, Result<int>, Cycle>(
  (ref, cycle) => NumberControllerImpl(initialValue: cycle.repeat),
  name: '${NumberController.kName}.repeat',
);
