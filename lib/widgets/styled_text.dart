import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({
    Key? key,
    required String data,
  })   : _data = data,
        super(key: key);

  final String _data;

  @override
  Widget build(BuildContext context) {
    return Text(
      _data,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 80.0),
    );
  }
}
