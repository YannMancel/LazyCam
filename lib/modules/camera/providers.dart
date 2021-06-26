import 'package:flutter_riverpod/flutter_riverpod.dart'
    show StateNotifierProvider;

import 'camera.dart';

final cameraProvider =
    StateNotifierProvider.autoDispose<CameraLogic, CameraState>(
  (ref) => CameraLogicImpl(),
  name: CameraLogic.kName,
);
