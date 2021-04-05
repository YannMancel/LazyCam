import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'controllers/controllers_link.dart';

final videoControllerProvider = StateNotifierProvider((_) => VideoController());

final cameraControllerProvider = StateNotifierProvider.autoDispose((_) {
  return CameraController();
});
