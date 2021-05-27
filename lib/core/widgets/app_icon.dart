import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  const AppIcon({
    Key? key,
    required IconData icon,
    Color color = Colors.red,
  })  : _icon = icon,
        _color = color,
        super(key: key);

  final IconData _icon;
  final Color _color;

  @override
  Widget build(BuildContext context) {
    return Icon(
      _icon,
      color: _color,
    );
  }
}
