import 'package:flutter/material.dart';

import 'pages/pages_link.dart';

abstract class MaterialRouteGenerator {
  static const kHomeRoute = '/';
  static const kCameraRoute = '/camera';
  static const kStreamRoute = '/stream';

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

      default:
        throw FormatException('Route not found.');
    }
  }
}
