import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'ffmpeg demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: const HomePage(title: 'ffmpeg demo'),
      ),
    );
  }
}
