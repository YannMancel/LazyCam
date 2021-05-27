import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText({
    Key? key,
    required String data,
    required TextStyle textStyle,
  })   : _data = data,
        _textStyle = textStyle,
        super(key: key);

  const AppText.huge({
    Key? key,
    required String data,
  }) : this(
          key: key,
          data: data,
          textStyle: const TextStyle(fontSize: 80.0),
        );

  const AppText.medium({
    Key? key,
    required String data,
  }) : this(
          key: key,
          data: data,
          textStyle: const TextStyle(fontSize: 50.0),
        );

  final String _data;
  final TextStyle _textStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      _data,
      textAlign: TextAlign.center,
      style: _textStyle,
    );
  }
}
