import 'package:camera/camera.dart' show CameraPreview;
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart' show HookWidget;
import 'package:hooks_riverpod/hooks_riverpod.dart' show useProvider;
import 'package:flutter_riverpod/flutter_riverpod.dart' show BuildContextX;

import '../../../_features.dart';

class StreamPage extends HookWidget {
  const StreamPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cameraState = useProvider(streamCameraProvider);
    final cameraController =
        useProvider(imageStreamProvider.notifier).cameraLogic;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Steam'),
        actions: <Widget>[
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
              : _StreamView(
                  preview: CameraPreview(cameraController.controller!),
                ),
          error: (_, message) {
            return Text(
              message ?? 'Unknown error',
              style: AppTextStyles.headline1,
            );
          },
          orElse: () => const CircularProgressIndicator(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read(imageStreamProvider.notifier).start(timeInSecond: 15);
        },
        child: const Icon(Icons.stream),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class _StreamView extends HookWidget {
  const _StreamView({
    Key? key,
    required CameraPreview preview,
  })  : _preview = preview,
        super(key: key);

  final CameraPreview _preview;

  @override
  Widget build(BuildContext context) {
    final timerState = useProvider(streamTimerProvider);

    return timerState.when(
      initial: (_) => SizedBox.expand(child: _preview),
      start: (seconds) => Center(
        child: Text(
          '$seconds',
          style: AppTextStyles.headline1,
        ),
      ),
      pause: (_) => const Center(
        child: Text(
          'Pause',
          style: AppTextStyles.headline1,
        ),
      ),
      stop: (_) => const SizedBox.expand(
        child: ColoredBox(color: Colors.red),
      ),
    );
  }
}
