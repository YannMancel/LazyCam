import 'package:flutter/material.dart';

class AppAnimatedIcon extends StatelessWidget {
  const AppAnimatedIcon({
    Key? key,
    required AnimatedIconData icon,
    required Animation<double> progress,
    Color color = Colors.red,
  })  : _icon = icon,
        _progress = progress,
        _color = color,
        super(key: key);

  final AnimatedIconData _icon;
  final Animation<double> _progress;
  final Color _color;

  @override
  Widget build(BuildContext context) {
    return AnimatedIcon(
      icon: _icon,
      progress: _progress,
      color: _color,
    );
  }
}
