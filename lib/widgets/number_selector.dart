import 'dart:math' show pow;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart'
    show TextInputFormatter, LengthLimitingTextInputFormatter;
import 'package:flutter_hooks/flutter_hooks.dart'
    show HookWidget, useTextEditingController;
import 'package:hooks_riverpod/hooks_riverpod.dart'
    show ProviderListener, useProvider;

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
        _onChanged = onChanged,
        _maxDigit = maxDigit,
        super(key: key);

  final Cycle _cycle;
  final int _maxDigit;
  final ValueChanged<int>? _onChanged;

  @override
  Widget build(BuildContext context) {
    final numberController = useProvider(numberProvider(_cycle).notifier);
    final textEditController = useTextEditingController(
      text: '${_cycle.tempo}',
    );

    return ProviderListener<int>(
      provider: numberProvider(_cycle),
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
