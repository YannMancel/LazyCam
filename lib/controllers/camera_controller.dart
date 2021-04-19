import 'package:camera/camera.dart' as camera_lib;

import '../models/camera_state.dart';
import 'base_controller.dart';
import 'controllers_link.dart';

abstract class _CameraController {
  camera_lib.CameraController get controller;
  void switchCamera();
  Future<void> recordMovie();
  Future<void> startImageStream();
  Future<void> stopImageStream();
}

class CameraController extends BaseController<CameraState>
    implements _CameraController {
  CameraController({
    required ImageController imageController,
  })   : _imageController = imageController,
        super(CameraState.initial()) {
    _initialize();
  }

  final ImageController _imageController;
  camera_lib.CameraController? _controller;

  static const kName = 'CameraController';

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

  // ***************************************************************************
  // BaseController abstract class
  // ***************************************************************************
  @override
  String get name => kName;

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  // ***************************************************************************
  // _CameraController interface
  // ***************************************************************************
  @override
  camera_lib.CameraController get controller {
    if (_controller == null) _error = 'Error during initialisation.';
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

    // todo add record action
  }

  @override
  Future<void> startImageStream() async {
    if (!_isReadyPreviewState) {
      _error = 'The camera is not in readyPreview state. '
          'To start image stream is impossible.';
      return;
    }

    await _controller!.startImageStream((image) {
      _imageController.addImage = image;
    });
  }

  @override
  Future<void> stopImageStream() async {
    _imageController.stopImageStream();
    await _controller!.stopImageStream();
  }
}
