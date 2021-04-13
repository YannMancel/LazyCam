import 'package:camera/camera.dart' as camera_lib;
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/camera_state.dart';
import 'controllers_link.dart';

abstract class _CameraController {
  camera_lib.CameraController get controller;
  void switchCamera();
  Future<void> recordMovie();
  Future<void> startImageStream();
  Future<void> stopImageStream();
}

class CameraController extends StateNotifier<CameraState>
    implements _CameraController {
  CameraController({
    required ImageController imageController,
  })   : _imageController = imageController,
        super(CameraState.initial()) {
    _initialize();
  }

  final ImageController _imageController;
  camera_lib.CameraController? _controller;

  set _error(String message) {
    state = CameraState.error(
      isFirstCamera: state.isFirstCamera,
      message: message,
    );
  }

  Future<void> _initialize() async {
    state = CameraState.setup(isFirstCamera: state.isFirstCamera);

    final cameras = await camera_lib.availableCameras();

    if (cameras.length == 1 && state.isFirstCamera == false) {
      _error = 'There is only on camera.';
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
    // todo add record action
  }

  @override
  Future<void> startImageStream() async {
    _imageController.startTimer(timeInSecond: 15);
    await _controller!.startImageStream((image) {
      _imageController.addImage = image;
    });
  }

  @override
  Future<void> stopImageStream() async {
    _imageController.stopImageStream();
    await _controller!.stopImageStream();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }
}
