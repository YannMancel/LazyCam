import 'package:flutter/material.dart';

class TimerSelector extends StatelessWidget {
  const TimerSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(Icons.remove),
          onPressed: null,
        ),
        //TextField(),
        Text(':'),
        //TextField(),
        IconButton(
          icon: Icon(Icons.add),
          onPressed: null,
        ),
      ],
    );
  }
}
