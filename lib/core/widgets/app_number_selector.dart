import 'package:flutter/material.dart';
import 'package:flutter/services.dart'
    show
        TextInputFormatter,
        FilteringTextInputFormatter,
        LengthLimitingTextInputFormatter;

import '../../modules/training/training.dart';
import '../core.dart';

class AppNumberSelector extends StatelessWidget {
  const AppNumberSelector({
    Key? key,
    required NumberController numberController,
    required TextEditingController textEditController,
    required FocusNode nodeFocus,
    required int maxDigit,
  })   : _numberController = numberController,
        _textEditController = textEditController,
        _nodeFocus = nodeFocus,
        _maxDigit = maxDigit,
        super(key: key);

  final NumberController _numberController;
  final TextEditingController _textEditController;
  final FocusNode _nodeFocus;
  final int _maxDigit;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const AppIcon(icon: Icons.remove_circle),
          onPressed: _numberController.decrement,
        ),
        Expanded(
          child: TextField(
              controller: _textEditController,
              focusNode: _nodeFocus,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(_maxDigit),
              ],
              decoration: const InputDecoration(
                border: InputBorder.none,
                floatingLabelBehavior: FloatingLabelBehavior.never,
              ),
              onEditingComplete: () {
                _numberController.input = _textEditController.text;
              }),
        ),
        IconButton(
          icon: const AppIcon(icon: Icons.add_circle),
          onPressed: _numberController.increment,
        ),
      ],
    );
  }
}
