import 'package:flutter/material.dart';

import 'pages/pages_link.dart';

abstract class MaterialRouteGenerator {
  static const kHomeRoute = '/';
  static const kTimerRoute = '/timer';
  static const kCameraRoute = '/camera';
  static const kStreamRoute = '/stream';

  static Route<dynamic>? generate(RouteSettings? onGenerateRoute) {
    // Calls initialRoute of MaterialApp
    if (onGenerateRoute == null) return null;

    switch (onGenerateRoute.name) {
      case kHomeRoute:
        return _getRoute(page: const HomePage());
      case kTimerRoute:
        return _getRoute(page: const TimerPage());
      case kCameraRoute:
        return _getRoute(page: const CameraPage());
      case kStreamRoute:
        return _getRoute(page: const StreamPage());

      default:
        throw FormatException('Route not found.');
    }
  }

  static Route<dynamic> _getRoute({required Widget page}) {
    return MaterialPageRoute(builder: (_) => page);
  }
}
