import 'package:flutter_riverpod/flutter_riverpod.dart'
    show StateNotifierProvider;

import 'controllers/controllers_link.dart';
import 'models/models_link.dart';

/// Manages the open/close system of menu.
final menuProvider = StateNotifierProvider<MenuController, MenuState>(
  (_) => MenuControllerImpl(),
  name: MenuController.kName,
);

/// Manages the time with its start/stop methods.
final timerProvider =
    StateNotifierProvider.autoDispose<TimerController, TimerState>(
  (_) => TimerControllerImpl(),
  name: TimerController.kName,
);

/// Manages the camera states and starts/stops the image stream.
final cameraProvider =
    StateNotifierProvider.autoDispose<CameraController, CameraState>(
  (ref) => CameraControllerImpl(),
  name: CameraController.kName,
);

/// Manages the image stream from camera.
final imageStreamProvider =
    StateNotifierProvider.autoDispose<ImageStreamController, StreamState>(
  (ref) {
    final timerController = ref.watch(timerProvider.notifier);
    return ImageStreamControllerImpl(timerController: timerController);
  },
  name: ImageStreamController.kName,
);
