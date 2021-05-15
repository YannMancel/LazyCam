import 'package:flutter/material.dart';
import 'package:flutter/services.dart'
    show TextInputFormatter, LengthLimitingTextInputFormatter;
import 'package:flutter_hooks/flutter_hooks.dart'
    show HookWidget, useTextEditingController;

class NumberSelector extends HookWidget {
  const NumberSelector({
    Key? key,
    int maxDigit = 3,
  })  : _maxDigit = maxDigit,
        super(key: key);

  final int _maxDigit;

  @override
  Widget build(BuildContext context) {
    final minuteController = useTextEditingController(text: '5');

    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.remove_circle, color: Colors.red),
          onPressed: null,
        ),
        Expanded(
          child: TextField(
            controller: minuteController,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: <TextInputFormatter>[
              LengthLimitingTextInputFormatter(_maxDigit),
            ],
            decoration: InputDecoration(
              border: InputBorder.none,
              floatingLabelBehavior: FloatingLabelBehavior.never,
            ),
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
