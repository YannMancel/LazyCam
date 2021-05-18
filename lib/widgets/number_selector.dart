import 'dart:math' show pow;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart'
    show TextInputFormatter, LengthLimitingTextInputFormatter;
import 'package:flutter_hooks/flutter_hooks.dart'
    show HookWidget, useTextEditingController;
import 'package:hooks_riverpod/hooks_riverpod.dart'
    show ProviderListener, useProvider;

import '../extensions/extensions_link.dart';
import '../models/models_link.dart';
import '../providers.dart';

class NumberSelector extends HookWidget {
  NumberSelector({
    Key? key,
    required Cycle cycle,
    int maxDigit = 3,
    ValueChanged<int>? onChanged,
  })  : assert(
          cycle.tempo < pow(10, maxDigit + 1),
          "The cycle's tempo is out of digit range.",
        ),
        _cycle = cycle,
        _maxDigit = maxDigit,
        _onChanged = onChanged,
        super(key: key);

  final Cycle _cycle;
  final int _maxDigit;
  final ValueChanged<int>? _onChanged;

  @override
  Widget build(BuildContext context) {
    final numberController = useProvider(tempoProvider(_cycle).notifier);
    numberController.digit = _maxDigit;

    final textEditController = useTextEditingController(
      text: '${_cycle.tempo}',
    );

    return ProviderListener<Result<int>>(
      provider: tempoProvider(_cycle),
      onChange: (context, result) {
        result.when(
          data: (value) {
            // Increment & decrement calls of empty text
            if (value.toString() != textEditController.text) {
              textEditController.text = value.toString();
            }

            _onChanged?.call(value);
          },
          error: (message) => context.notify = message,
        );
      },
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.remove_circle, color: Colors.red),
            onPressed: numberController.decrement,
          ),
          Expanded(
            child: TextField(
              controller: textEditController,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: <TextInputFormatter>[
                LengthLimitingTextInputFormatter(_maxDigit),
              ],
              decoration: const InputDecoration(
                border: InputBorder.none,
                floatingLabelBehavior: FloatingLabelBehavior.never,
              ),
              onEditingComplete: () =>
                  // TODO: hide keyboard
                  numberController.input = textEditController.text,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.add_circle, color: Colors.red),
            onPressed: numberController.increment,
          ),
        ],
      ),
    );
  }
}
