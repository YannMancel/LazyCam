import 'package:flutter_riverpod/flutter_riverpod.dart'
    show StateNotifierProvider;

import '../camera/camera.dart';
import '../timer/timer.dart';
import 'stream.dart';

// -----------------------------------------------------------------------------
// Stream
// -----------------------------------------------------------------------------
/// Manages the image stream from camera thanks to timer.
final imageStreamProvider =
    StateNotifierProvider.autoDispose<ImageStreamLogic, StreamState>(
  (_) => ImageStreamLogicImpl(),
  name: ImageStreamLogic.kName,
);

final streamTimerProvider =
    StateNotifierProvider.autoDispose<TimerLogic, TimerState>(
  (ref) => ref.watch(imageStreamProvider.notifier).timerLogic,
  name: '${ImageStreamLogic.kName}.${TimerLogic.kName}',
);

final streamCameraProvider =
    StateNotifierProvider.autoDispose<CameraLogic, CameraState>(
  (ref) => ref.watch(imageStreamProvider.notifier).cameraLogic,
  name: '${ImageStreamLogic.kName}.${CameraLogic.kName}',
);
