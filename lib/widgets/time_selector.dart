import 'package:flutter/material.dart';
import 'package:flutter/services.dart'
    show TextInputFormatter, LengthLimitingTextInputFormatter;
import 'package:flutter_hooks/flutter_hooks.dart'
    show HookWidget, useTextEditingController;

class TimerSelector extends HookWidget {
  const TimerSelector({
    Key? key,
    int maxDigitForMinute = 3,
    int maxDigitForSecond = 2,
  })  : _maxDigitForMinute = maxDigitForMinute,
        _maxDigitForSecond = maxDigitForSecond,
        super(key: key);

  final int _maxDigitForMinute;
  final int _maxDigitForSecond;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.remove_circle, color: Colors.red),
          onPressed: null,
        ),
        Expanded(
          child: _Time(
            maxDigitForMinute: _maxDigitForMinute,
            maxDigitForSecond: _maxDigitForSecond,
          ),
        ),
        IconButton(
          icon: const Icon(Icons.add_circle, color: Colors.red),
          onPressed: null,
        ),
      ],
    );
  }
}

class _Time extends HookWidget {
  const _Time({
    Key? key,
    required int maxDigitForMinute,
    required int maxDigitForSecond,
  })   : _maxDigitForMinute = maxDigitForMinute,
        _maxDigitForSecond = maxDigitForSecond,
        super(key: key);

  final int _maxDigitForMinute;
  final int _maxDigitForSecond;

  @override
  Widget build(BuildContext context) {
    final minuteController = useTextEditingController(text: '01');
    final secondController = useTextEditingController(text: '00');

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          //width: kMaxTextWith,
          child: TextField(
            controller: minuteController,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.right,
            inputFormatters: <TextInputFormatter>[
              LengthLimitingTextInputFormatter(_maxDigitForMinute),
            ],
            decoration: InputDecoration(
              border: InputBorder.none,
              floatingLabelBehavior: FloatingLabelBehavior.never,
            ),
          ),
        ),
        const Text(' :  '),
        Expanded(
          //width: kMaxTextWith,
          child: TextField(
            controller: secondController,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.left,
            inputFormatters: <TextInputFormatter>[
              LengthLimitingTextInputFormatter(_maxDigitForSecond),
            ],
            decoration: InputDecoration(
              border: InputBorder.none,
              floatingLabelBehavior: FloatingLabelBehavior.never,
            ),
          ),
        ),
      ],
    );
  }
}
