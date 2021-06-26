import 'package:flutter_riverpod/flutter_riverpod.dart'
    show StateNotifierProvider;
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'training.dart';

// -----------------------------------------------------------------------------
// Training
// -----------------------------------------------------------------------------
final trainingProvider =
    StateNotifierProvider.autoDispose<TrainingLogic, Training>(
  (_) => TrainingLogicImpl(),
  name: TrainingLogic.kName,
);

final trainingManagerProvider = StateNotifierProvider.autoDispose
    .family<TrainingManagerLogic, Cycle, Training>(
  (_, training) => TrainingManagerLogicImpl(training: training),
  name: TrainingManagerLogic.kName,
);

// -----------------------------------------------------------------------------
// Cycle's parameters
// -----------------------------------------------------------------------------
/// Manages the [Cycle.time].
final timeProvider = StateNotifierProvider.autoDispose
    .family<TimeLogic, Result<Duration>, Cycle>(
  (ref, cycle) => TimeLogicImpl(value: cycle.time),
  name: '${TimeLogic.kName}.time',
);

/// Manages the [Cycle.tempo].
final tempoProvider =
    StateNotifierProvider.autoDispose.family<NumberLogic, Result<int>, Cycle>(
  (ref, cycle) => NumberLogicImpl(value: cycle.tempo),
  name: '${NumberLogic.kName}.tempo',
);

/// Manages the [Cycle.pause].
final pauseProvider = StateNotifierProvider.autoDispose
    .family<TimeLogic, Result<Duration>, Cycle>(
  (ref, cycle) => TimeLogicImpl(value: cycle.pause),
  name: '${TimeLogic.kName}.pause',
);

/// Manages the [Cycle.repeat].
final repeatProvider =
    StateNotifierProvider.autoDispose.family<NumberLogic, Result<int>, Cycle>(
  (ref, cycle) => NumberLogicImpl(value: cycle.repeat),
  name: '${NumberLogic.kName}.repeat',
);
