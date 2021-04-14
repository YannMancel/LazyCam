import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers.dart';

class TimerPage extends HookWidget {
  const TimerPage({
    Key? key,
  }) : super(key: key);

  static const double kTextSize = 80.0;

  @override
  Widget build(BuildContext context) {
    final timerState = useProvider(timerControllerProvider.state);
    final timerController = useProvider(timerControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Timer'),
      ),
      body: Center(
        child: timerState.when(
          initial: (_) => const Text(''),
          start: (seconds) {
            return _TimerWidget(seconds: seconds, textSize: kTextSize);
          },
          stop: (_) => const _StopWidget(textSize: kTextSize),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          timerController.timer = 15;
          timerController.start();
        },
        child: Icon(Icons.timer),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class _TimerWidget extends StatelessWidget {
  const _TimerWidget({
    Key? key,
    required int seconds,
    required double textSize,
  })   : _seconds = seconds,
        _textSize = textSize,
        super(key: key);

  final int _seconds;
  final double _textSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$_seconds',
      style: TextStyle(fontSize: _textSize),
    );
  }
}

class _StopWidget extends StatelessWidget {
  const _StopWidget({
    Key? key,
    required double textSize,
  })   : _textSize = textSize,
        super(key: key);

  final double _textSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      'STOP',
      style: TextStyle(fontSize: _textSize),
    );
  }
}
