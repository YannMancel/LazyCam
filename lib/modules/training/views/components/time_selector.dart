import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart'
    show HookWidget, useTextEditingController, useFocusNode;
import 'package:hooks_riverpod/hooks_riverpod.dart'
    show ProviderListener, useProvider;

import '../../../../core/core.dart';
import '../../training.dart';

class TimeSelector extends HookWidget {
  TimeSelector({
    Key? key,
    required Cycle cycle,
    int maxDigitForMinute = 3,
    int maxDigitForSecond = 2,
    ValueChanged<Duration>? onChanged,
  })  : assert(
          cycle.time.secondsSubtractedWithMinutes
                  .isInValidRange(digit: maxDigitForSecond) ==
              true,
          "The cycle's time is out of second digit range.",
        ),
        assert(
          cycle.time.inMinutes.isInValidRange(digit: maxDigitForMinute) == true,
          "The cycle's time is out of minute digit range.",
        ),
        _cycle = cycle,
        _maxDigitForMinute = maxDigitForMinute,
        _maxDigitForSecond = maxDigitForSecond,
        _onChanged = onChanged,
        super(key: key);

  final Cycle _cycle;
  final int _maxDigitForMinute;
  final int _maxDigitForSecond;
  final ValueChanged<Duration>? _onChanged;

  @override
  Widget build(BuildContext context) {
    final timeLogic = useProvider(timeProvider(_cycle).notifier);
    timeLogic.setDigits(
      minutes: _maxDigitForMinute,
      seconds: _maxDigitForSecond,
    );

    final minuteController = useTextEditingController(
      text: '${_cycle.time.inMinutes}',
    );
    final secondController = useTextEditingController(
      text: '${_cycle.time.secondsSubtractedWithMinutes}',
    );

    final minuteNodeFocus = useFocusNode();
    final secondNodeFocus = useFocusNode();

    return ProviderListener<Result<Duration>>(
      provider: timeProvider(_cycle),
      onChange: (context, result) {
        // Close keyboard if it is open
        minuteNodeFocus.unfocus();
        secondNodeFocus.unfocus();

        result.when(data: (value) {
          // Increment & decrement calls of empty text
          if ('${value.inMinutes}' != minuteController.text ||
              '${value.secondsSubtractedWithMinutes}' !=
                  secondController.text) {
            minuteController.text = '${value.inMinutes}';
            secondController.text = '${value.secondsSubtractedWithMinutes}';
          }

          _onChanged?.call(value);
        }, error: (message, lastData) {
          context.notify = message;
          timeLogic.setWithLastData();
        });
      },
      child: AppTimeSelector(
        timeLogic: timeLogic,
        textEditControllerForMinute: minuteController,
        textEditControllerForSecond: secondController,
        nodeFocusForMinute: minuteNodeFocus,
        nodeFocusForSecond: secondNodeFocus,
        maxDigitForMinute: _maxDigitForMinute,
        maxDigitForSecond: _maxDigitForSecond,
      ),
    );
  }
}
