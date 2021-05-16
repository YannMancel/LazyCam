import 'package:flutter_riverpod/flutter_riverpod.dart'
    show StateNotifierProvider;

import 'controllers/controllers_link.dart';
import 'models/models_link.dart';

// -----------------------------------------------------------------------------
// Menu
// -----------------------------------------------------------------------------

/// Manages the open/close system of menu.
final menuProvider = StateNotifierProvider<MenuController, MenuState>(
  (_) => MenuControllerImpl(),
  name: MenuController.kName,
);

// -----------------------------------------------------------------------------
// Timer
// -----------------------------------------------------------------------------

/// Manages the time with its start/stop methods.
final timerProvider =
    StateNotifierProvider.autoDispose<TimerController, TimerState>(
  (_) => TimerControllerImpl(),
  name: TimerController.kName,
);

// -----------------------------------------------------------------------------
// Camera
// -----------------------------------------------------------------------------

/// Manages the camera states and starts/stops the image stream.
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

/// Manages the time with its start/stop methods.
final streamTimerProvider =
    StateNotifierProvider.autoDispose<TimerController, TimerState>(
  (ref) => ref.watch(imageStreamProvider.notifier).timerController,
  name: '${ImageStreamController.kName}.${TimerController.kName}',
);

/// Manages the camera states and starts/stops the image stream.
final streamCameraProvider =
    StateNotifierProvider.autoDispose<CameraController, CameraState>(
  (ref) => ref.watch(imageStreamProvider.notifier).cameraController,
  name: '${ImageStreamController.kName}.${CameraController.kName}',
);

// -----------------------------------------------------------------------------
// Training
// -----------------------------------------------------------------------------

/// Manages the training with its addCycle/copyLastCycle methods.
final trainingProvider =
    StateNotifierProvider.autoDispose<TrainingController, Training>(
  (_) => TrainingControllerImpl(),
  name: TrainingController.kName,
);

// -----------------------------------------------------------------------------
// Number
// -----------------------------------------------------------------------------

// TODO rename to tempoProvider?!
/// Manages the number with its decrement/increment methods.
final numberProvider =
    StateNotifierProvider.autoDispose.family<NumberController, int, Cycle>(
  (ref, cycle) => NumberControllerImpl(state: cycle.tempo),
  name: NumberController.kName,
);
