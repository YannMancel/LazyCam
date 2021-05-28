import 'package:flutter/material.dart';
import 'package:flutter/services.dart'
    show
        TextInputFormatter,
        FilteringTextInputFormatter,
        LengthLimitingTextInputFormatter;

import '../../modules/training/training.dart';
import '../core.dart';

class AppTimeSelector extends StatelessWidget {
  const AppTimeSelector({
    Key? key,
    required TimeController timeController,
    required TextEditingController textEditControllerForMinute,
    required TextEditingController textEditControllerForSecond,
    required FocusNode nodeFocusForMinute,
    required FocusNode nodeFocusForSecond,
    required int maxDigitForMinute,
    required int maxDigitForSecond,
  })   : _timeController = timeController,
        _textEditControllerForMinute = textEditControllerForMinute,
        _textEditControllerForSecond = textEditControllerForSecond,
        _nodeFocusForMinute = nodeFocusForMinute,
        _nodeFocusForSecond = nodeFocusForSecond,
        _maxDigitForMinute = maxDigitForMinute,
        _maxDigitForSecond = maxDigitForSecond,
        super(key: key);

  final TimeController _timeController;
  final TextEditingController _textEditControllerForMinute;
  final TextEditingController _textEditControllerForSecond;
  final FocusNode _nodeFocusForMinute;
  final FocusNode _nodeFocusForSecond;
  final int _maxDigitForMinute;
  final int _maxDigitForSecond;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const AppIcon(icon: Icons.remove_circle),
          onPressed: _timeController.decrement,
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                //width: kMaxTextWith,
                child: TextField(
                  controller: _textEditControllerForMinute,
                  focusNode: _nodeFocusForMinute,
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
                    _timeController.minutes = _textEditControllerForMinute.text;
                  },
                ),
              ),
              const Text(' :  '),
              Expanded(
                child: TextField(
                  controller: _textEditControllerForSecond,
                  focusNode: _nodeFocusForSecond,
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
                    _timeController.seconds = _textEditControllerForSecond.text;
                  },
                ),
              ),
            ],
          ),
        ),
        IconButton(
          icon: const AppIcon(icon: Icons.add_circle),
          onPressed: _timeController.increment,
        ),
      ],
    );
  }
}
