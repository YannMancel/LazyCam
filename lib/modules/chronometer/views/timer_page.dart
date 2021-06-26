import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart'
    show HookWidget, useAnimationController, useEffect;
import 'package:hooks_riverpod/hooks_riverpod.dart'
    show ProviderListener, useProvider;

import '../../../core/core.dart';
import '../chronometer.dart';

@Deprecated('Page does not used at this step of project')
class TimerPage extends HookWidget {
  const TimerPage({
    Key? key,
    required Duration duration,
  })   : _duration = duration,
        super(key: key);

  final Duration _duration;

  @override
  Widget build(BuildContext context) {
    final timerController = useProvider(timerProvider.notifier);
    final timerState = useProvider(timerProvider);

    useEffect(() {
      WidgetsBinding.instance!.addPostFrameCallback(
        (_) => timerController.duration = _duration,
      );
    }, const <Object?>['only_one_useEffect_call']);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Timer'),
      ),
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: <Widget>[
          _TimerView(
            initialDuration: _duration,
            duration: timerState.duration,
          ),
          _ActionButtons(
            timerController: timerController,
            timerState: timerState,
          ),
        ],
      ),
    );
  }
}

class _ActionButtons extends HookWidget {
  const _ActionButtons({
    Key? key,
    required ChronometerController timerController,
    required TimerState timerState,
  })   : _timerController = timerController,
        _timerState = timerState,
        super(key: key);

  final ChronometerController _timerController;
  final TimerState _timerState;

  static const _kIconSize = 48.0;

  @override
  Widget build(BuildContext context) {
    final animationController = useAnimationController(
      duration: const Duration(milliseconds: 200),
    );

    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _timerState.maybeWhen(
            initial: (_) => const SizedBox.shrink(),
            orElse: () => IconButton(
              padding: const EdgeInsets.all(16.0),
              iconSize: _kIconSize,
              onPressed: _timerController.reset,
              icon: const Icon(Icons.loop),
            ),
          ),
          _timerState.maybeWhen(
            stop: (_) => const SizedBox.shrink(),
            orElse: () => TextButton(
              onPressed: () {
                _timerState.when(
                  initial: (_) => _timerController.start(),
                  start: (_) => _timerController.pause(),
                  pause: (_) => _timerController.resume(),
                  stop: (_) {/* Use case not possible */},
                );
              },
              child: ProviderListener<TimerState>(
                provider: timerProvider,
                onChange: (_, timerState) {
                  timerState.when(
                    initial: (_) => animationController.reset(),
                    start: (_) => animationController.forward(),
                    pause: (_) => animationController.reverse(),
                    stop: (_) => {/* Do nothing here */},
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: AnimatedIcon(
                    size: _kIconSize,
                    icon: AnimatedIcons.play_pause,
                    progress: animationController,
                  ),
                ),
              ),
            ),
          ),
          _timerState.maybeWhen(
            initial: (_) => const SizedBox.shrink(),
            stop: (_) => const SizedBox.shrink(),
            orElse: () => IconButton(
              padding: const EdgeInsets.all(16.0),
              iconSize: _kIconSize,
              onPressed: _timerController.stop,
              icon: const Icon(Icons.stop),
            ),
          ),
        ],
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

    return Center(
      child: LayoutBuilder(
        builder: (_, constraints) {
          return Stack(
            alignment: Alignment.center,
            children: <Widget>[
              SizedBox(
                width: constraints.maxWidth * 0.7,
                height: constraints.maxWidth * 0.7,
                child: CircularProgressIndicator(
                  value: value,
                  backgroundColor: Colors.grey,
                  valueColor: const AlwaysStoppedAnimation(Colors.red),
                  strokeWidth: 15.0,
                ),
              ),
              Text(
                _duration.minutesAndSecondsFormatWithoutUnits,
                style: AppTextStyles.headline2,
              ),
            ],
          );
        },
      ),
    );
  }
}
