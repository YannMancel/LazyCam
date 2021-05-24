import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' show ProviderScope;

import 'routes.dart';
import 'core/core.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget with RouteNames {
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      observers: [const AppObserver()],
      child: MaterialApp(
        title: 'LazyCam',
        showPerformanceOverlay: false,
        debugShowMaterialGrid: false,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        initialRoute: RouteNames.kHomeRoute,
        onGenerateRoute: MaterialRouteGenerator.generate,
      ),
    );
  }
}
