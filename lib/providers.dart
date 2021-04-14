import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'controllers/controllers_link.dart';

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
