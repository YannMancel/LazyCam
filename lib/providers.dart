import 'package:flutter_riverpod/flutter_riverpod.dart'
    show StateNotifierProvider;

import 'controllers/controllers_link.dart';
import 'models/models_link.dart';

// -----------------------------------------------------------------------------
// Menu
// -----------------------------------------------------------------------------
final menuProvider = StateNotifierProvider<MenuController, MenuState>(
  (_) => MenuControllerImpl(),
  name: MenuController.kName,
);

// -----------------------------------------------------------------------------
// Timer
// -----------------------------------------------------------------------------
final timerProvider = StateNotifierProvider.autoDispose
    .family<ChronometerController, TimerState, Duration>(
  (_, duration) => ChronometerControllerImpl(initialDuration: duration),
  name: ChronometerController.kName,
);

// -----------------------------------------------------------------------------
// Camera
// -----------------------------------------------------------------------------
final cameraProvider =
    StateNotifierProvider.autoDispose<CameraController, CameraState>(
  (ref) => CameraControllerImpl(),
  name: CameraController.kName,
);

// -----------------------------------------------------------------------------
// Stream
// -----------------------------------------------------------------------------
/// Manages the image stream from camera thanks to timer.
final imageStreamProvider =
    StateNotifierProvider.autoDispose<ImageStreamController, StreamState>(
  (_) => ImageStreamControllerImpl(),
  name: ImageStreamController.kName,
);

final streamTimerProvider =
    StateNotifierProvider.autoDispose<ChronometerController, TimerState>(
  (ref) => ref.watch(imageStreamProvider.notifier).chronometerController,
  name: '${ImageStreamController.kName}.${ChronometerController.kName}',
);

final streamCameraProvider =
    StateNotifierProvider.autoDispose<CameraController, CameraState>(
  (ref) => ref.watch(imageStreamProvider.notifier).cameraController,
  name: '${ImageStreamController.kName}.${CameraController.kName}',
);

// -----------------------------------------------------------------------------
// Training
// -----------------------------------------------------------------------------
final trainingProvider =
    StateNotifierProvider.autoDispose<TrainingController, Training>(
  (_) => TrainingControllerImpl(),
  name: TrainingController.kName,
);

// -----------------------------------------------------------------------------
// Time
// -----------------------------------------------------------------------------
/// Manages the [Cycle.time].
final timeProvider = StateNotifierProvider.autoDispose
    .family<TimeController, Result<Duration>, Cycle>(
  (ref, cycle) => TimeControllerImpl(initialValue: cycle.time),
  name: '${TimeController.kName}.time',
);

// -----------------------------------------------------------------------------
// Number
// -----------------------------------------------------------------------------
/// Manages the [Cycle.tempo].
final tempoProvider = StateNotifierProvider.autoDispose
    .family<NumberController, Result<int>, Cycle>(
  (ref, cycle) => NumberControllerImpl(initialValue: cycle.tempo),
  name: '${NumberController.kName}.tempo',
);

// -----------------------------------------------------------------------------
// Pause
// -----------------------------------------------------------------------------
/// Manages the [Cycle.pause].
final pauseProvider = StateNotifierProvider.autoDispose
    .family<TimeController, Result<Duration>, Cycle>(
  (ref, cycle) => TimeControllerImpl(initialValue: cycle.pause),
  name: '${TimeController.kName}.pause',
);

// -----------------------------------------------------------------------------
// Repeat
// -----------------------------------------------------------------------------
/// Manages the [Cycle.repeat].
final repeatProvider = StateNotifierProvider.autoDispose
    .family<NumberController, Result<int>, Cycle>(
  (ref, cycle) => NumberControllerImpl(initialValue: cycle.repeat),
  name: '${NumberController.kName}.repeat',
);
