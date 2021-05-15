import 'package:flutter/material.dart';

import 'mixins/mixins_link.dart';
import 'pages/pages_link.dart';

abstract class MaterialRouteGenerator with RouteNames {
  static Route<dynamic>? generate(RouteSettings? onGenerateRoute) {
    // Calls initialRoute of MaterialApp
    if (onGenerateRoute == null) return null;

    switch (onGenerateRoute.name) {
      // [LEVEL 0]
      case RouteNames.kHomeRoute:
        return _getRoute(page: const HomePage());
      // [LEVEL 1]
      case RouteNames.kTimeSelectorRoute:
        return _getRoute(page: const TimeSelectorPage());
      case RouteNames.kCameraRoute:
        return _getRoute(page: const CameraPage());
      case RouteNames.kStreamRoute:
        return _getRoute(page: const StreamPage());
      // [LEVEL 2]
      case RouteNames.kTimerRoute:
        return _getRoute(page: const TimerPage());

      default:
        throw FormatException('Route of ${onGenerateRoute.name} unknown.');
    }
  }

  static Route<dynamic> _getRoute({required Widget page}) {
    return MaterialPageRoute(builder: (_) => page);
  }
}
