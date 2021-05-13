import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' show ProviderScope;

import 'routes.dart';
import 'utils/utils_link.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
        initialRoute: MaterialRouteGenerator.kHomeRoute,
        onGenerateRoute: MaterialRouteGenerator.generate,
      ),
    );
  }
}
