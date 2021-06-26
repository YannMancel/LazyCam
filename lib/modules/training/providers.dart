import 'package:flutter_riverpod/flutter_riverpod.dart'
    show StateNotifierProvider;
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'training.dart';

// -----------------------------------------------------------------------------
// Training
// -----------------------------------------------------------------------------
final trainingProvider =
    StateNotifierProvider.autoDispose<TrainingController, Training>(
  (_) => TrainingControllerImpl(),
  name: TrainingController.kName,
);

final trainingManagerProvider = StateNotifierProvider.autoDispose
    .family<TrainingManagerController, Cycle, Training>(
  (_, training) => TrainingManagerControllerImpl(training: training),
  name: TrainingManagerController.kName,
);

// -----------------------------------------------------------------------------
// Cycle's parameters
// -----------------------------------------------------------------------------
/// Manages the [Cycle.time].
final timeProvider = StateNotifierProvider.autoDispose
    .family<TimeController, Result<Duration>, Cycle>(
  (ref, cycle) => TimeControllerImpl(value: cycle.time),
  name: '${TimeController.kName}.time',
);

/// Manages the [Cycle.tempo].
final tempoProvider = StateNotifierProvider.autoDispose
    .family<NumberController, Result<int>, Cycle>(
  (ref, cycle) => NumberControllerImpl(value: cycle.tempo),
  name: '${NumberController.kName}.tempo',
);

/// Manages the [Cycle.pause].
final pauseProvider = StateNotifierProvider.autoDispose
    .family<TimeController, Result<Duration>, Cycle>(
  (ref, cycle) => TimeControllerImpl(value: cycle.pause),
  name: '${TimeController.kName}.pause',
);

/// Manages the [Cycle.repeat].
final repeatProvider = StateNotifierProvider.autoDispose
    .family<NumberController, Result<int>, Cycle>(
  (ref, cycle) => NumberControllerImpl(value: cycle.repeat),
  name: '${NumberController.kName}.repeat',
);
