import 'package:camera/camera.dart' show CameraPreview;
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart' show HookWidget;
import 'package:hooks_riverpod/hooks_riverpod.dart' show useProvider;

import '../../../core/core.dart';
import '../camera.dart';

class CameraPage extends HookWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cameraState = useProvider(cameraProvider);
    final cameraController = useProvider(cameraProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Camera'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.flip_camera_ios_sharp),
            onPressed: cameraController.switchCamera,
          ),
        ],
      ),
      body: Center(
        child: cameraState.maybeWhen(
          readyPreview: (_) => (cameraController.controller == null)
              ? const SizedBox()
              : SizedBox.expand(
                  child: CameraPreview(cameraController.controller!),
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
        onPressed: cameraController.recordMovie,
        child: const Icon(Icons.camera),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
