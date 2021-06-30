import 'package:flutter/material.dart';

import '_features.dart';

abstract class MaterialRouteGenerator with RouteNames {
  static Route<dynamic>? generate(RouteSettings? routeSettings) {
    // Calls initialRoute of MaterialApp
    if (routeSettings == null) return null;

    switch (routeSettings.name) {
      // [LEVEL 0]
      case RouteNames.kHomeRoute:
        return _route(page: const HomePage());

      // [LEVEL 1]
      case RouteNames.kTrainingSettingsRoute:
        return _route(page: const TrainingSettingsPage());
      case RouteNames.kCameraRoute:
        return _route(page: const CameraPage());
      case RouteNames.kStreamRoute:
        return _route(page: const StreamPage());

      // [LEVEL 2]
      case RouteNames.kTrainingRoute:
        final training = routeSettings.arguments as Training?;
        return _route(
          page: TrainingPage(training: training ?? const Training()),
        );

      default:
        throw FormatException('Route of ${routeSettings.name} unknown.');
    }
  }

  static Route<dynamic> _route({required Widget page}) {
    return MaterialPageRoute(builder: (_) => page);
  }
}
