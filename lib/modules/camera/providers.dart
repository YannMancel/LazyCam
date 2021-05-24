import 'package:flutter_riverpod/flutter_riverpod.dart'
    show StateNotifierProvider;

import 'camera.dart';

final cameraProvider =
    StateNotifierProvider.autoDispose<CameraController, CameraState>(
  (ref) => CameraControllerImpl(),
  name: CameraController.kName,
);
