import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart'
    show HookWidget, useAnimationController, useEffect;
import 'package:hooks_riverpod/hooks_riverpod.dart'
    show ProviderListener, useProvider;

import '../../../core/core.dart';
import '../chronometer.dart';

class TimerPage extends HookWidget {
  const TimerPage({
    Key? key,
    required Duration initialDuration,
  })   : _initialDuration = initialDuration,
        super(key: key);

  final Duration _initialDuration;

  @override
  Widget build(BuildContext context) {
    final timerController = useProvider(timerProvider.notifier);

    useEffect(() {
      WidgetsBinding.instance!.addPostFrameCallback(
        (_) => timerController.duration = _initialDuration,
      );
    }, <Object?>['only_one_useEffect_call']);

    final timerState = useProvider(timerProvider);

    final animationController = useAnimationController(
      duration: const Duration(milliseconds: 200),
    );

    return ProviderListener<TimerState>(
      provider: timerProvider,
      onChange: (_, timerState) {
        timerState.when(
          initial: (_) => animationController.reset(),
          start: (_) => animationController.forward(),
          pause: (_) => animationController.reverse(),
          stop: (_) => null,
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Timer'),
        ),
        body: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Center(
              child: _TimerView(
                initialDuration: _initialDuration,
                duration: timerState.duration,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  timerState.maybeWhen(
                    initial: (_) => const SizedBox.shrink(),
                    orElse: () => TextButton(
                      onPressed: timerController.reset,
                      child: const Icon(Icons.loop),
                    ),
                  ),
                  timerState.maybeWhen(
                    stop: (_) => const SizedBox.shrink(),
                    orElse: () => TextButton(
                      onPressed: () {
                        timerState.when(
                          initial: (_) => timerController.start(),
                          start: (_) => timerController.pause(),
                          pause: (_) => timerController.resume(),
                          stop: (_) => null,
                        );
                      },
                      child: AnimatedIcon(
                        icon: AnimatedIcons.play_pause,
                        progress: animationController,
                      ),
                    ),
                  ),
                  timerState.maybeWhen(
                    initial: (_) => const SizedBox.shrink(),
                    stop: (_) => const SizedBox.shrink(),
                    orElse: () => TextButton(
                      onPressed: timerController.stop,
                      child: const Icon(Icons.stop),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TimerView extends StatelessWidget {
  const _TimerView({
    Key? key,
    required Duration initialDuration,
    required Duration duration,
  })   : _initialDuration = initialDuration,
        _duration = duration,
        super(key: key);

  final Duration _initialDuration;
  final Duration _duration;

  @override
  Widget build(BuildContext context) {
    final value = ((_initialDuration.inSeconds.toDouble() -
                _duration.inSeconds.toDouble()) *
            1.0) /
        _initialDuration.inSeconds.toDouble();

    return LayoutBuilder(
      builder: (_, constraints) {
        return Stack(
          alignment: Alignment.center,
          children: <Widget>[
            SizedBox(
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
            Text(
              _duration.minutesAndSecondsFormatWithoutUnits,
              style: AppTextStyles.headline2,
            ),
          ],
        );
      },
    );
  }
}
