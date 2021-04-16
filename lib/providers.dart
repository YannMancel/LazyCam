import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'controllers/controllers_link.dart';

/// Manages the open/close system of normal FAB (and its mini FABs)
final isOpenFAB = StateProvider<bool>(
  (_) => false,
  name: 'isOpenFAB',
);

/// Manages the time with its start/stop methods
final timerControllerProvider = StateNotifierProvider.autoDispose(
  (_) => TimerController(),
  name: TimerController.kName,
);

final imageControllerProvider = StateNotifierProvider.autoDispose(
  (_) => ImageController(),
  name: ImageController.kName,
);

final cameraControllerProvider = StateNotifierProvider.autoDispose(
  (ref) {
    final timerController = ref.watch(timerControllerProvider);
    final imageController = ref.watch(imageControllerProvider);
    return CameraController(
      timerController: timerController,
      imageController: imageController,
    );
  },
  name: CameraController.kName,
);
