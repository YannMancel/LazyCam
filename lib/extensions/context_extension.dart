import 'package:flutter/material.dart'
    show ScaffoldMessenger, SnackBar, Text, Widget, showDialog;
import 'package:flutter/widgets.dart' show BuildContext, Navigator;

extension ContextExtension on BuildContext {
  set pushTo(String routeName) => Navigator.pushNamed(this, routeName);

  void pushWithArgumentTo({
    required String routeName,
    required Object arguments,
  }) {
    Navigator.pushNamed(this, routeName, arguments: arguments);
  }

  void pop() => Navigator.of(this).pop();

  Future<T?> showCustomDialog<T>({required Widget dialog}) async {
    return showDialog<T?>(
      context: this,
      builder: (_) => dialog,
    );
  }

  set notify(String message) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }
}
