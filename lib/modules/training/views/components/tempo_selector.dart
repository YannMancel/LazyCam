import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart'
    show HookWidget, useTextEditingController, useFocusNode;
import 'package:hooks_riverpod/hooks_riverpod.dart'
    show ProviderListener, useProvider;

import '../../../../_features.dart';

class TempoSelector extends HookWidget {
  TempoSelector({
    Key? key,
    required Cycle cycle,
    int maxDigit = 3,
    ValueChanged<int>? onChanged,
  })  : assert(
          cycle.tempo.isInValidRange(digit: maxDigit) == true,
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
    final numberLogic = useProvider(tempoProvider(_cycle).notifier);
    numberLogic.digit = _maxDigit;

    final textEditController = useTextEditingController(
      text: '${_cycle.tempo}',
    );

    final nodeFocus = useFocusNode();

    return ProviderListener<Result<int>>(
      provider: tempoProvider(_cycle),
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
          numberLogic.input = '$lastData';
        });
      },
      child: AppNumberSelector(
        numberLogic: numberLogic,
        textEditController: textEditController,
        nodeFocus: nodeFocus,
        maxDigit: _maxDigit,
      ),
    );
  }
}
