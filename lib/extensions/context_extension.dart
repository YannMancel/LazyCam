import 'package:flutter/material.dart' show ScaffoldMessenger, SnackBar, Text;
import 'package:flutter/widgets.dart' show BuildContext, Navigator;

extension ContextExtension on BuildContext {
  set pushTo(String routeName) => Navigator.pushNamed(this, routeName);

  set notify(String message) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }
}
