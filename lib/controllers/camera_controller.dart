part of 'controllers_link.dart';

class CameraController extends StateNotifier<CameraState> {
  CameraController() : super(CameraState.initial()) {
    _initialize();
  }

  camera.CameraController? _controller;

  set _error(String message) {
    state = CameraState.error(
      isFirstCamera: state.isFirstCamera,
      message: message,
    );
  }

  camera.CameraController get controller {
    if (_controller == null) {
      _error = 'Error during initialisation.';
      throw 'CameraController has not called initialize method before this getter.';
    }
    return _controller!;
  }

  Future<void> _initialize() async {
    state = CameraState.setup(isFirstCamera: state.isFirstCamera);

    final cameras = await camera.availableCameras();

    if (cameras.length == 1 && state.isFirstCamera == false) {
      _error = 'There is only on camera.';
      throw 'Error during initialization of camera.';
    }

    _controller = camera.CameraController(
      state.isFirstCamera ? cameras.first : cameras.last,
      camera.ResolutionPreset.high,
    );

    await _controller!.initialize();

    state = CameraState.readyPreview(isFirstCamera: state.isFirstCamera);
  }

  void switchCamera() {
    state = CameraState.switchCamera(isFirstCamera: !state.isFirstCamera);
    _initialize();
  }

  Future<void> start() async {
    // todo add record action
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }
}