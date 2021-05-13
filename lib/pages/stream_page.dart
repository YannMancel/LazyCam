import 'package:camera/camera.dart' show CameraPreview;
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart' show HookWidget;
import 'package:hooks_riverpod/hooks_riverpod.dart' show useProvider;
import 'package:flutter_riverpod/flutter_riverpod.dart' show BuildContextX;

import '../providers.dart';
import '../widgets/widgets_link.dart';

class StreamPage extends HookWidget {
  const StreamPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cameraState = useProvider(streamCameraProvider);
    final cameraController =
        useProvider(imageStreamProvider.notifier).cameraController;

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
      body: Center(
        child: cameraState.maybeWhen(
          readyPreview: (_) => (cameraController.controller == null)
              ? const SizedBox()
              : StreamView(
                  preview: CameraPreview(cameraController.controller!),
                ),
          error: (_, message) => StyledText(data: message ?? 'Unknown error'),
          orElse: () => const CircularProgressIndicator(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read(imageStreamProvider.notifier).start(timeInSecond: 15);
        },
        child: Icon(Icons.stream),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class StreamView extends HookWidget {
  const StreamView({
    Key? key,
    required CameraPreview preview,
  })   : _preview = preview,
        super(key: key);

  final CameraPreview _preview;

  @override
  Widget build(BuildContext context) {
    final timerState = useProvider(streamTimerProvider);

    return timerState.when(
      initial: (_) => SizedBox.expand(child: _preview),
      start: (seconds) => Center(
        child: StyledText(data: '$seconds'),
      ),
      stop: (_) => SizedBox.expand(
        child: Container(
          color: Colors.red,
          child: null,
        ),
      ),
    );
  }
}
