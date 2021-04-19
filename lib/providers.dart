import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'controllers/controllers_link.dart';

/// Manages the open/close system of normal FAB (and its mini FABs).
final isOpenFAB = StateProvider<bool>(
  (_) => false,
  name: 'isOpenFAB',
);

/// Manages the time with its start/stop methods.
final timerControllerProvider = StateNotifierProvider.autoDispose(
  (_) => TimerController(),
  name: TimerController.kName,
);

/// Manages the image stream from camera.
final imageControllerProvider = StateNotifierProvider.autoDispose(
  (ref) {
    final timerController = ref.watch(timerControllerProvider);
    return ImageController(timerController: timerController);
  },
  name: ImageController.kName,
);

/// Manages the camera states and starts/stops the image stream.
final cameraControllerProvider = StateNotifierProvider.autoDispose(
  (ref) {
    final imageController = ref.watch(imageControllerProvider);
    return CameraController(imageController: imageController);
  },
  name: CameraController.kName,
);
