import 'package:camera/camera.dart' as camera_lib show CameraImage;

import '../mixins/mixins_link.dart';
import '../models/models_link.dart';
import 'base_controller.dart';
import 'timer_controller.dart';

abstract class ImageStreamController extends BaseController<StreamState> {
  ImageStreamController({required StreamState state}) : super(state);

  static const kName = 'imageStreamProvider';

  @override
  String get name => ImageStreamController.kName;

  void startTimer({required int timeInSecond});
  set addImage(camera_lib.CameraImage image);
  void stopImageStream();
}

class ImageStreamControllerImpl extends ImageStreamController
    with ImageConverter {
  ImageStreamControllerImpl({
    required TimerController timerController,
  })   : _timerController = timerController,
        super(state: StreamState.initial());

  final TimerController _timerController;

  /*
    Do a pipeline
      - input: camera.CameraImage
      - between: Postraitement
      - ouput: IMAGE
   */
  // To calculate the difference between the begin and end of timer
  int _frameNumber = 0;

  @override
  void startTimer({required int timeInSecond}) {
    // todo just set timer in this method in rename method?!
    _timerController.start(timeInSecond: timeInSecond);
  }

  @override
  set addImage(camera_lib.CameraImage image) {
    // Todo check async way, use a boolean instead of the size of state?!
    if (state.images.isEmpty) startTimer(timeInSecond: 15);

    final convertedImage = convertImageFromCamera(image);
    if (convertedImage != null) {
      //state = StreamState.recordDuringTimer(images: <Image>[...state.images, convertedImage]);
    }

    _frameNumber++;
    print('IMAGES: $_frameNumber - ${state.images.length}');
  }

  @override
  void stopImageStream() {
    // todo add stop action
  }
}
