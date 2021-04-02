import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
    String? title,
  })  : _title = title,
        super(key: key);

  final String? _title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._title ?? ''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Initial',
            ),
          ],
        ),
      ),
    );
  }
}
