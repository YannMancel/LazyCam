import 'package:camera/camera.dart' show CameraPreview;
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart' show HookWidget;
import 'package:hooks_riverpod/hooks_riverpod.dart' show useProvider;

import '../providers.dart';
import '../widgets/widgets_link.dart';

class StreamPage extends HookWidget {
  const StreamPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cameraState = useProvider(cameraProvider);
    final cameraController = useProvider(cameraProvider.notifier);
    final imageState = useProvider(imageStreamProvider);
    final timerState = useProvider(timerProvider);
    final timerController = useProvider(timerProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Steam'),
        actions: [
          IconButton(
            icon: const Icon(Icons.flip_camera_ios_sharp),
            onPressed: cameraController.switchCamera,
          )
        ],
      ),
      body: cameraState.maybeWhen(
        readyPreview: (_) => timerState.when(
          initial: (_) => SizedBox.expand(
            child: CameraPreview(cameraController.controller),
          ),
          start: (seconds) => Center(
            child: StyledText(data: '$seconds'),
          ),
          stop: (_) => SizedBox.expand(
            child: Container(
              color: Colors.red,
              child: null,
            ),
          ),
        ),
        orElse: () => const Center(child: CircularProgressIndicator()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => timerController.start(
            timeInSecond: 15), //cameraController.startImageStream,
        child: Icon(Icons.stream),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
