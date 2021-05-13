import 'package:camera/camera.dart' as camera_lib
    show CameraController, availableCameras, ResolutionPreset;

import '../models/models_link.dart';
import 'controllers_link.dart';

abstract class CameraController extends BaseController<CameraState> {
  CameraController({required CameraState state}) : super(state: state);

  static const kName = 'CameraController';

  @override
  String get name => CameraController.kName;

  camera_lib.CameraController get controller;
  void switchCamera();
  Future<void> recordMovie();
}

class CameraControllerImpl extends CameraController {
  CameraControllerImpl() : super(state: CameraState.initial()) {
    _initialize();
  }

  camera_lib.CameraController? _controller;

  set _error(String message) {
    state = CameraState.error(
      isFirstCamera: state.isFirstCamera,
      message: message,
    );
  }

  bool get _isReadyPreviewState {
    return state.maybeWhen(
      readyPreview: (_) => true,
      orElse: () => false,
    );
  }

  Future<void> _initialize() async {
    state = CameraState.setup(isFirstCamera: state.isFirstCamera);

    final cameras = await camera_lib.availableCameras();

    if (cameras.length == 1 && state.isFirstCamera == false) {
      _error = 'There is only on camera. '
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

  @override
  camera_lib.CameraController get controller {
    if (_controller == null) {
      _error = 'Error during initialisation. CameraController is null.';
    }
    return _controller!;
  }

  @override
  void switchCamera() {
    state = CameraState.switchCamera(isFirstCamera: !state.isFirstCamera);
    _initialize();
  }

  @override
  Future<void> recordMovie() async {
    if (!_isReadyPreviewState) {
      _error = 'The camera is not in readyPreview state. '
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
}
