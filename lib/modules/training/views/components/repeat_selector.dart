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

import '../../../../core/core.dart';
import '../../training.dart';

// TODO refactor
class RepeatSelector extends HookWidget {
  RepeatSelector({
    Key? key,
    required Cycle cycle,
    int maxDigit = 3,
    ValueChanged<int>? onChanged,
  })  : assert(
          cycle.repeat.isInValidRange(digit: maxDigit) == true,
          "The cycle's repeat is out of digit range.",
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
    final numberController = useProvider(repeatProvider(_cycle).notifier);
    numberController.digit = _maxDigit;

    final textEditController = useTextEditingController(
      text: '${_cycle.repeat}',
    );

    final nodeFocus = useFocusNode();

    return ProviderListener<Result<int>>(
      provider: repeatProvider(_cycle),
      onChange: (context, result) {
        // Close keyboard if it is open
        nodeFocus.unfocus();

        result.when(data: (value) {
          // Increment & decrement calls of empty text
          if ('$value' != textEditController.text) {
            textEditController.text = '$value';
          }

          _onChanged?.call(value);
        }, error: (message, lastData) {
          context.notify = message;
          numberController.input = '$lastData';
        });
      },
      child: Row(
        children: [
          IconButton(
            icon: const AppIcon(icon: Icons.remove_circle),
            onPressed: numberController.decrement,
          ),
          Expanded(
            child: TextField(
                controller: textEditController,
                focusNode: nodeFocus,
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
                  numberController.input = textEditController.text;
                }),
          ),
          IconButton(
            icon: const AppIcon(icon: Icons.add_circle),
            onPressed: numberController.increment,
          ),
        ],
      ),
    );
  }
}
