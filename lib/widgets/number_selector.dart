import 'dart:math' show pow;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart'
    show TextInputFormatter, LengthLimitingTextInputFormatter;
import 'package:flutter_hooks/flutter_hooks.dart'
    show HookWidget, useTextEditingController;
import 'package:hooks_riverpod/hooks_riverpod.dart'
    show ProviderListener, useProvider;

import '../providers.dart';

class NumberSelector extends HookWidget {
  NumberSelector({
    Key? key,
    required int cycleId,
    int initialValue = 5,
    int maxDigit = 3,
    ValueChanged<int>? onChanged,
  })  : assert(
          initialValue < pow(10, maxDigit + 1),
          'initialValue is out of digit range.',
        ),
        _cycleId = cycleId,
        _initialValue = initialValue,
        _onChanged = onChanged,
        _maxDigit = maxDigit,
        super(key: key);

  final int _cycleId;
  final int _initialValue;
  final int _maxDigit;
  final ValueChanged<int>? _onChanged;

  @override
  Widget build(BuildContext context) {
    final numberController = useProvider(numberProvider(_cycleId).notifier);
    final textEditController = useTextEditingController(text: '$_initialValue');

    return ProviderListener<int>(
      provider: numberProvider(_cycleId),
      onChange: (_, value) => textEditController.text = '$value',
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.remove_circle, color: Colors.red),
            onPressed: () {
              numberController.decrement = textEditController.text;
            },
          ),
          Expanded(
            child: TextField(
              controller: textEditController,
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
                if (textEditController.text.isNotEmpty) {
                  _onChanged?.call(int.parse(value));
                }
              },
            ),
          ),
          IconButton(
            icon: const Icon(Icons.add_circle, color: Colors.red),
            onPressed: () {
              numberController.increment = textEditController.text;
            },
          ),
        ],
      ),
    );
  }
}
