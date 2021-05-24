import 'package:flutter_riverpod/flutter_riverpod.dart'
    show StateNotifierProvider;

import '../camera/camera.dart';
import '../chronometer/chronometer.dart';
import 'stream.dart';

// -----------------------------------------------------------------------------
// Stream
// -----------------------------------------------------------------------------
/// Manages the image stream from camera thanks to timer.
final imageStreamProvider =
    StateNotifierProvider.autoDispose<ImageStreamController, StreamState>(
  (_) => ImageStreamControllerImpl(),
  name: ImageStreamController.kName,
);

final streamTimerProvider =
    StateNotifierProvider.autoDispose<ChronometerController, TimerState>(
  (ref) => ref.watch(imageStreamProvider.notifier).chronometerController,
  name: '${ImageStreamController.kName}.${ChronometerController.kName}',
);

final streamCameraProvider =
    StateNotifierProvider.autoDispose<CameraController, CameraState>(
  (ref) => ref.watch(imageStreamProvider.notifier).cameraController,
  name: '${ImageStreamController.kName}.${CameraController.kName}',
);
