import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers.dart';

class CameraPage extends HookWidget {
  const CameraPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cameraState = useProvider(cameraControllerProvider.state);
    final cameraController = useProvider(cameraControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Camera'),
        actions: [
          IconButton(
            icon: Icon(Icons.flip_camera_ios_sharp), 
            onPressed: cameraController.switchCamera,
          )
        ],
      ),
      body: cameraState.maybeWhen(
        readyPreview: (_) => CameraPreview(cameraController.controller),
        orElse: () {
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: context.read(cameraControllerProvider).start,
        child: Icon(Icons.camera),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
