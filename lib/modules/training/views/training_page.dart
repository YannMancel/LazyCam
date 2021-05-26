import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart'
    show HookWidget, useAnimationController, useEffect;
import 'package:hooks_riverpod/hooks_riverpod.dart'
    show ProviderListener, useProvider;

import '../../../core/core.dart';
import '../../training/training.dart';
import '../../chronometer/chronometer.dart';

class TrainingPage extends HookWidget {
  const TrainingPage({
    Key? key,
    required Training training,
  })   : _training = training,
        super(key: key);

  final Training _training;

  @override
  Widget build(BuildContext context) {
    final initialDuration = _training.cycles.first.time;

    // TODO remove and replace by start by training controller
    final timerController = useProvider(timerProvider.notifier);

    useEffect(() {
      WidgetsBinding.instance!.addPostFrameCallback(
        (_) => timerController.duration = initialDuration,
      );
    }, <Object?>['only_one_useEffect_call']);

    final timerState = useProvider(timerProvider);

    final animationController = useAnimationController(
      duration: const Duration(milliseconds: 200),
    );

    return ProviderListener<TimerState>(
      provider: timerProvider,
      onChange: (_, timerState) {
        timerState.maybeWhen(
          stop: (_) => animationController.reverse(),
          orElse: () {/* Do nothing here */},
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Timer'),
        ),
        body: Center(
          child: _TimerView(cycle: _training.cycles.first),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => timerState.maybeWhen(
            start: (_) {
              animationController.reverse();
              timerController.stop();
            },
            orElse: () {
              animationController.forward();
              timerController.start();
            },
          ),
          child: AnimatedIcon(
            icon: AnimatedIcons.play_pause,
            progress: animationController,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}

class _TimerView extends StatelessWidget {
  const _TimerView({
    Key? key,
    required Cycle cycle,
  })   : _cycle = cycle,
        super(key: key);

  final Cycle _cycle;

  @override
  Widget build(BuildContext context) {
    final timerState = useProvider(timerProvider);

    final value = ((_cycle.time.inSecondsInDouble -
                timerState.duration.inSecondsInDouble) *
            1.0) /
        _cycle.time.inSecondsInDouble;

    return LayoutBuilder(
      builder: (_, constraints) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: constraints.maxWidth * 0.7,
              height: constraints.maxWidth * 0.7,
              child: SizedBox.expand(
                child: CircularProgressIndicator(
                  value: value,
                  backgroundColor: Colors.grey,
                  valueColor: const AlwaysStoppedAnimation(Colors.red),
                  strokeWidth: 15.0,
                ),
              ),
            ),
            StyledText.medium(
              data: timerState.duration.minutesAndSecondsFormatWithoutUnits,
            ),
          ],
        );
      },
    );
  }
}
