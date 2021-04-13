import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'controllers/controllers_link.dart';

final videoControllerProvider = StateNotifierProvider(
  (_) => VideoController(),
  name: 'StateNotifierProvider____VideoController',
);

final imageControllerProvider = StateNotifierProvider.autoDispose(
  (_) => ImageController(),
  name: 'StateNotifierProvider____ImageController',
);

final cameraControllerProvider = StateNotifierProvider.autoDispose(
  (ref) {
    final imageController = ref.watch(imageControllerProvider);
    return CameraController(imageController: imageController);
  },
  name: 'StateNotifierProvider____CameraController',
);
