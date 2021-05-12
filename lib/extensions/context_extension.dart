import 'package:flutter/widgets.dart';

extension ContextExtension on BuildContext {
  set pushBy(String routeName) => Navigator.pushNamed(this, routeName);
}
