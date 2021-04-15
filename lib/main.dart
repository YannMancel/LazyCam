import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'routes.dart';
import 'utils/AppObserver.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      observers: [const AppObserver()],
      child: MaterialApp(
        title: 'LazyCam',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        initialRoute: MaterialRouteGenerator.kHomeRoute,
        onGenerateRoute: MaterialRouteGenerator.generate,
      ),
    );
  }
}
