import 'package:flutter/material.dart';
import 'package:flutter/services.dart'
    show
        TextInputFormatter,
        FilteringTextInputFormatter,
        LengthLimitingTextInputFormatter;

import '../../_features.dart';

class AppTimeSelector extends StatelessWidget {
  const AppTimeSelector({
    Key? key,
    required TimeLogic timeLogic,
    required TextEditingController textEditControllerForMinute,
    required TextEditingController textEditControllerForSecond,
    required FocusNode nodeFocusForMinute,
    required FocusNode nodeFocusForSecond,
    required int maxDigitForMinute,
    required int maxDigitForSecond,
  })  : _timeLogic = timeLogic,
        _textEditControllerForMinute = textEditControllerForMinute,
        _textEditControllerForSecond = textEditControllerForSecond,
        _nodeFocusForMinute = nodeFocusForMinute,
        _nodeFocusForSecond = nodeFocusForSecond,
        _maxDigitForMinute = maxDigitForMinute,
        _maxDigitForSecond = maxDigitForSecond,
        super(key: key);

  final TimeLogic _timeLogic;
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
          icon: const Icon(Icons.remove_circle),
          onPressed: _timeLogic.decrement,
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: TextField(
                  controller: _textEditControllerForMinute,
                  focusNode: _nodeFocusForMinute,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.right,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(_maxDigitForMinute),
                  ],
                  onEditingComplete: () {
                    _timeLogic.minutes = _textEditControllerForMinute.text;
                  },
                ),
              ),
              const Text(
                ' :  ',
                style: AppTextStyles.subtitle1,
              ),
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
                  onEditingComplete: () {
                    _timeLogic.seconds = _textEditControllerForSecond.text;
                  },
                ),
              ),
            ],
          ),
        ),
        IconButton(
          icon: const Icon(Icons.add_circle),
          onPressed: _timeLogic.increment,
        ),
      ],
    );
  }
}
