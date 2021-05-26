import 'package:camera/camera.dart' as camera_lib show CameraImage;
import 'package:flutter/foundation.dart' show visibleForTesting;
import 'package:flutter/material.dart' show Image;

import '../../../core/core.dart';
import '../../camera/camera.dart';
import '../../chronometer/chronometer.dart';
import '../stream.dart';

// -----------------------------------------------------------------------------
// Abstract class
// -----------------------------------------------------------------------------
abstract class ImageStreamController extends BaseController<StreamState> {
  ImageStreamController({required StreamState state}) : super(state: state);

  static const kName = 'ImageStreamProvider';

  @override
  String get name => ImageStreamController.kName;

  CameraController get cameraController;
  ChronometerController get chronometerController;
  Future<void> start({required int timeInSecond});
  Future<void> stop();
}

// -----------------------------------------------------------------------------
// Implementation
// -----------------------------------------------------------------------------
class ImageStreamControllerImpl extends ImageStreamController
    with ImageConverter {
  ImageStreamControllerImpl() : super(state: StreamState.initial());

  final CameraController _cameraController = CameraControllerImpl();
  final ChronometerController _chronometerController =
      ChronometerControllerImpl().apply(
    actionOnItself: (it) => it.duration = const Duration(seconds: 15),
  );

  // To calculate the difference between the begin and end of timer
  int _frameNumber = 0;

  @override
  CameraController get cameraController => _cameraController;

  @override
  ChronometerController get chronometerController => _chronometerController;

  @override
  Future<void> start({required int timeInSecond}) async {
    if (!_cameraController.isReadyPreview) {
      _cameraController.error = 'The camera is not in readyPreview state. '
          'To start image stream is impossible.';
      return;
    }

    _chronometerController.start();

    // TODO: create stream.
    //await _cameraController.controller?.startImageStream(
    //  (image) => addImage = image,
    //);
  }

  @override
  Future<void> stop() async {
    _stopImageStream();
    await _cameraController.controller?.stopImageStream();
  }

  @override
  void dispose() {
    _cameraController.dispose();
    _chronometerController.dispose();
    super.dispose();
  }

  @visibleForTesting
  set addImage(camera_lib.CameraImage image) {
    // TODO: create c++ method.

    final convertedImage = convertImageFromCamera(image);

    if (convertedImage != null) {
      state = StreamState.recordDuringTimer(
        images: <Image>[...state.images, convertedImage],
      );
    }

    _frameNumber++;
    print('IMAGES: $_frameNumber - ${state.images.length}');
  }

  void _stopImageStream() {
    // TODO: add stop action.
  }
}
