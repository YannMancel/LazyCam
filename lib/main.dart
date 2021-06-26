import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'
    show ProviderObserver, ProviderScope;

import 'core/core.dart';
import 'routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget with RouteNames {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      observers: const <ProviderObserver>[AppObserver()],
      child: MaterialApp(
        title: 'LazyCam',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.darkTheme,
        initialRoute: RouteNames.kHomeRoute,
        onGenerateRoute: MaterialRouteGenerator.generate,
      ),
    );
  }
}
