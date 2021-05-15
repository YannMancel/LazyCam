import 'dart:math' show pow;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart'
    show TextInputFormatter, LengthLimitingTextInputFormatter;
import 'package:flutter_hooks/flutter_hooks.dart'
    show HookWidget, useTextEditingController;

class NumberSelector extends HookWidget {
  NumberSelector({
    Key? key,
    int initialValue = 5,
    int maxDigit = 3,
    ValueChanged<int>? onChanged,
  })  : assert(
          initialValue < pow(10, maxDigit + 1),
          'initialValue is out of digit range.',
        ),
        _initialValue = initialValue,
        _onChanged = onChanged,
        _maxDigit = maxDigit,
        super(key: key);

  final int _initialValue;
  final int _maxDigit;
  final ValueChanged<int>? _onChanged;

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController(text: '$_initialValue');

    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.remove_circle, color: Colors.red),
          onPressed: () {
            final currentValue = controller.text;

            if (currentValue.isEmpty || currentValue == '0') return;

            controller.text = '${int.parse(currentValue) - 1}';
          },
        ),
        Expanded(
          child: TextField(
            controller: controller,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: <TextInputFormatter>[
              LengthLimitingTextInputFormatter(_maxDigit),
            ],
            decoration: InputDecoration(
              border: InputBorder.none,
              floatingLabelBehavior: FloatingLabelBehavior.never,
            ),
            onChanged: (value) {
              if (controller.text.isEmpty) return;

              _onChanged?.call(int.parse(value));
            },
          ),
        ),
        IconButton(
          icon: const Icon(Icons.add_circle, color: Colors.red),
          onPressed: () {
            final currentValue = controller.text;

            if (currentValue.isEmpty) {
              controller.text = '1';
              return;
            }

            controller.text = '${int.parse(currentValue) + 1}';
          },
        ),
      ],
    );
  }
}
