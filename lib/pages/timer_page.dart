import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart'
    show HookWidget, useAnimationController;
import 'package:flutter_riverpod/flutter_riverpod.dart' show BuildContextX;
import 'package:hooks_riverpod/hooks_riverpod.dart' show useProvider;

import '../providers.dart';
import '../widgets/widgets_link.dart';

class TimerPage extends HookWidget {
  const TimerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final timerState = useProvider(timerProvider);

    final animationController = useAnimationController(
      duration: const Duration(milliseconds: 200),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Timer'),
      ),
      body: Center(
        child: timerState.when(
          initial: (_) => const StyledText(data: 'START'),
          start: (seconds) => _TimerView(seconds: seconds),
          stop: (_) => const StyledText(data: 'STOP'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => timerState.maybeWhen(
          start: (_) {
            animationController.reverse();
            context.read(timerProvider.notifier).stop();
          },
          orElse: () {
            animationController.forward();
            context.read(timerProvider.notifier).start(timeInSecond: 15);
          },
        ),
        child: AnimatedIcon(
          icon: AnimatedIcons.play_pause,
          progress: animationController,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class _TimerView extends StatelessWidget {
  const _TimerView({
    Key? key,
    required int seconds,
  })   : _seconds = seconds,
        super(key: key);

  final int _seconds;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: constraints.maxWidth * 0.7,
              height: constraints.maxWidth * 0.7,
              child: SizedBox.expand(
                child: CircularProgressIndicator(
                  value: ((15.0 - _seconds.toDouble()) * 1.0) / 15.0,
                  backgroundColor: Colors.grey,
                  valueColor: const AlwaysStoppedAnimation(Colors.red),
                  strokeWidth: 15.0,
                ),
              ),
            ),
            StyledText(data: '$_seconds'),
          ],
        );
      },
    );
  }
}
