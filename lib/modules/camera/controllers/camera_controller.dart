import 'package:camera/camera.dart' as camera_lib
    show CameraController, availableCameras, ResolutionPreset;
import 'package:flutter/foundation.dart' show visibleForTesting;

import '../../../core/core.dart';
import '../camera.dart';

// -----------------------------------------------------------------------------
// Abstract class
// -----------------------------------------------------------------------------
abstract class CameraController extends BaseController<CameraState> {
  CameraController({required CameraState state}) : super(state: state);

  static const kName = 'CameraController';

  @override
  String get name => CameraController.kName;

  set error(String message);
  bool get isReadyPreview;
  camera_lib.CameraController? get controller;
  void switchCamera();
  Future<void> recordMovie();
}

// -----------------------------------------------------------------------------
// Implementation
// -----------------------------------------------------------------------------
class CameraControllerImpl extends CameraController {
  CameraControllerImpl() : super(state: const CameraState.initial()) {
    initialize();
  }

  camera_lib.CameraController? _controller;

  @override
  set error(String message) {
    state = CameraState.error(
      isFirstCamera: state.isFirstCamera,
      message: message,
    );
  }

  @override
  bool get isReadyPreview {
    return state.maybeWhen(
      readyPreview: (_) => true,
      orElse: () => false,
    );
  }

  @override
  camera_lib.CameraController? get controller {
    if (_controller == null) {
      error = 'Error during initialisation. CameraController is null.';
    }
    return _controller;
  }

  @override
  void switchCamera() {
    state = CameraState.switchCamera(isFirstCamera: !state.isFirstCamera);
    initialize();
  }

  @override
  Future<void> recordMovie() async {
    if (!isReadyPreview) {
      error = 'The camera is not in readyPreview state. '
          'To start image stream is impossible.';
      return;
    }
    // TODO: add record action.
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @visibleForTesting
  Future<void> initialize() async {
    state = CameraState.setup(isFirstCamera: state.isFirstCamera);

    final cameras = await camera_lib.availableCameras();

    if (cameras.length == 1 && state.isFirstCamera == false) {
      error = 'There is only on camera. '
          'The isFirstCamera field must no be equal to false.';
      return;
    }

    _controller = camera_lib.CameraController(
      state.isFirstCamera ? cameras.first : cameras.last,
      camera_lib.ResolutionPreset.high,
    );

    await _controller!.initialize();

    state = CameraState.readyPreview(isFirstCamera: state.isFirstCamera);
  }
}
