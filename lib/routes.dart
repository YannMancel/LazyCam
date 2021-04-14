import 'package:flutter/material.dart';

import 'pages/pages_link.dart';

abstract class MaterialRouteGenerator {
  static const kHomeRoute = '/';
  static const kCameraRoute = '/camera';
  static const kStreamRoute = '/stream';
  static const kTimerRoute = '/timer';

  static Route<dynamic>? generate(RouteSettings? onGenerateRoute) {
    // Calls initialRoute of MaterialApp
    if (onGenerateRoute == null) return null;

    switch (onGenerateRoute.name) {
      case kHomeRoute:
        return MaterialPageRoute(
          builder: (_) => const HomePage(title: 'home'),
        );

      case kCameraRoute:
        return MaterialPageRoute(
          builder: (_) => const CameraPage(),
        );

      case kStreamRoute:
        return MaterialPageRoute(
          builder: (_) => const OffsetStreamPage(),
        );

      case kTimerRoute:
        return MaterialPageRoute(
          builder: (_) => const TimerPage(),
        );

      default:
        throw FormatException('Route not found.');
    }
  }
}
