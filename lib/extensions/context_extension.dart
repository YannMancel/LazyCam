import 'package:flutter/widgets.dart' show BuildContext, Navigator;

extension ContextExtension on BuildContext {
  set pushBy(String routeName) => Navigator.pushNamed(this, routeName);
}
