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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title ?? ''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Initial'),
            ElevatedButton(
              onPressed: () {
                context.read(videoControllerProvider).startVideo();
              },
              child: const Text('Start Video'),
            )
          ],
        ),
      ),
    );
  }
}
