import 'package:ffmpeg_demo/pages/camera_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers.dart';

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
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Align(
                child: Text(videoState, key: kMessageKey),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        key: kButtonKey,
        onPressed: () {
          // todo replace logic
          // context.read(videoControllerProvider).startVideo();
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return const CameraPage();
          }));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
