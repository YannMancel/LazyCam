import 'package:flutter/material.dart';
import 'package:flutter/services.dart'
    show
        TextInputFormatter,
        FilteringTextInputFormatter,
        LengthLimitingTextInputFormatter;
import 'package:flutter_hooks/flutter_hooks.dart'
    show HookWidget, useTextEditingController, useFocusNode;
import 'package:hooks_riverpod/hooks_riverpod.dart'
    show ProviderListener, useProvider;

import '../extensions/extensions_link.dart';
import '../models/models_link.dart';
import '../providers.dart';

class PauseSelector extends HookWidget {
  PauseSelector({
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
    final timeController = useProvider(pauseProvider(_cycle).notifier);
    timeController.setDigits(
      minutes: _maxDigitForMinute,
      seconds: _maxDigitForSecond,
    );

    final minuteController = useTextEditingController(
      text: '${_cycle.pause.inMinutes}',
    );
    final secondController = useTextEditingController(
      text: '${_cycle.pause.secondsSubtractedWithMinutes}',
    );

    final minuteNodeFocus = useFocusNode();
    final secondNodeFocus = useFocusNode();

    return ProviderListener<Result<Duration>>(
      provider: pauseProvider(_cycle),
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
          timeController.setWithLastData();
        });
      },
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.remove_circle, color: Colors.red),
            onPressed: timeController.decrement,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  //width: kMaxTextWith,
                  child: TextField(
                    controller: minuteController,
                    focusNode: minuteNodeFocus,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.right,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(_maxDigitForMinute),
                    ],
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                    ),
                    onEditingComplete: () {
                      timeController.minutes = minuteController.text;
                    },
                  ),
                ),
                const Text(' :  '),
                Expanded(
                  child: TextField(
                    controller: secondController,
                    focusNode: secondNodeFocus,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.left,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(_maxDigitForSecond),
                    ],
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                    ),
                    onEditingComplete: () {
                      timeController.seconds = secondController.text;
                    },
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(Icons.add_circle, color: Colors.red),
            onPressed: timeController.increment,
          ),
        ],
      ),
    );
  }
}
