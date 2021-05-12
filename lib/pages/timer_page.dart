import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart' show HookWidget;
import 'package:hooks_riverpod/hooks_riverpod.dart' show useProvider;

import '../providers.dart';
import '../widgets/widgets_link.dart';

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
          initial: (_) => const StyledText(data: 'START'),
          start: (seconds) => StyledText(data: '$seconds'),
          stop: (_) => const StyledText(data: 'STOP'),
        ),
      ),
      floatingActionButton: timerState.maybeWhen(
        start: (_) => FloatingActionButton(
          onPressed: timerController.stop,
          child: const Icon(Icons.stop),
        ),
        orElse: () => FloatingActionButton(
          onPressed: () => timerController.start(timeInSecond: 15),
          child: const Icon(Icons.timer),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
