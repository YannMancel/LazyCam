import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers.dart';

class TimerPage extends HookWidget {
  const TimerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final timerState = useProvider(timerProvider);
    final timerController = useProvider(timerProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Timer'),
      ),
      body: Center(
        child: timerState.when(
          initial: (_) => const _StyledText(data: 'START'),
          start: (seconds) => _StyledText(data: '$seconds'),
          stop: (_) => const _StyledText(data: 'STOP'),
        ),
      ),
      floatingActionButton: timerState.maybeWhen(
        start: (_) => FloatingActionButton(
          onPressed: timerController.stop,
          child: Icon(Icons.stop),
        ),
        orElse: () => FloatingActionButton(
          onPressed: () {
            timerController.timer = 15;
            timerController.start();
          },
          child: Icon(Icons.timer),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class _StyledText extends StatelessWidget {
  const _StyledText({
    Key? key,
    required String data,
  })   : _data = data,
        super(key: key);

  final String _data;

  @override
  Widget build(BuildContext context) {
    return Text(
      _data,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 80.0),
    );
  }
}
