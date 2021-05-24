import 'package:flutter/material.dart';

import 'core/core.dart';
import 'modules/modules.dart';

abstract class MaterialRouteGenerator with RouteNames {
  static Route<dynamic>? generate(RouteSettings? onGenerateRoute) {
    // Calls initialRoute of MaterialApp
    if (onGenerateRoute == null) return null;

    switch (onGenerateRoute.name) {
      // [LEVEL 0]
      case RouteNames.kHomeRoute:
        return _getRoute(page: const HomePage());
      // [LEVEL 1]
      case RouteNames.kTrainingSettingsRoute:
        return _getRoute(page: const TrainingSettingsPage());
      case RouteNames.kCameraRoute:
        return _getRoute(page: const CameraPage());
      case RouteNames.kStreamRoute:
        return _getRoute(page: const StreamPage());
      // [LEVEL 2]
      case RouteNames.kTimerRoute:
        final training = onGenerateRoute.arguments as Training;
        return _getRoute(page: TimerPage(training: training));

      default:
        throw FormatException('Route of ${onGenerateRoute.name} unknown.');
    }
  }

  static Route<dynamic> _getRoute({required Widget page}) {
    return MaterialPageRoute(builder: (_) => page);
  }
}
