import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'controllers/controllers_link.dart';

/// Manages the open/close system of normal FAB (and its mini FABs)
final isOpenFAB = StateProvider<bool>(
  (ref) => false,
  name: 'StateProvider____isOpenFAB'
);

final videoControllerProvider = StateNotifierProvider(
  (_) => VideoController(),
  name: 'StateNotifierProvider____VideoController',
);

final timerControllerProvider = StateNotifierProvider.autoDispose(
  (_) => TimerController(),
  name: 'StateNotifierProvider____TimerController',
);

final imageControllerProvider = StateNotifierProvider.autoDispose(
  (_) => ImageController(),
  name: 'StateNotifierProvider____ImageController',
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
  name: 'StateNotifierProvider____CameraController',
);
