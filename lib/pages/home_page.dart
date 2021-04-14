import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers.dart';
import '../routes.dart';

class HomePage extends HookWidget {
  const HomePage({
    Key? key,
    String? title,
  })  : _title = title,
        super(key: key);

  final String? _title;

  static const kMessageKey = Key('message');
  static const kButtonKey = Key('button');

  @override
  Widget build(BuildContext context) {
    final videoState = useProvider(videoControllerProvider.state);

    return Scaffold(
      appBar: AppBar(
        title: Text(_title ?? ''),
      ),
      body: Stack(children: [
        Align(
          child: Text(videoState, key: kMessageKey),
        ),
        Positioned(
          bottom: 80.0,
          right: 20.0,
          child: FloatingActionButton(
            heroTag: 'camera',
            mini: true,
            onPressed: () {
              Navigator.pushNamed(context, MaterialRouteGenerator.kCameraRoute);
            },
            child: Icon(Icons.camera),
          ),
        ),
        Positioned(
          bottom: 130.0,
          right: 20.0,
          child: FloatingActionButton(
            heroTag: 'stream',
            mini: true,
            onPressed: () {
              Navigator.pushNamed(context, MaterialRouteGenerator.kStreamRoute);
            },
            child: Icon(Icons.stream),
          ),
        ),
        Positioned(
          bottom: 180.0,
          right: 20.0,
          child: FloatingActionButton(
            heroTag: 'timer',
            mini: true,
            onPressed: () {
              Navigator.pushNamed(context, MaterialRouteGenerator.kTimerRoute);
            },
            child: Icon(Icons.timer),
          ),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        key: kButtonKey,
        onPressed: () {
          // todo add animation for mini FABs
          //context.read(videoControllerProvider).startVideo();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
