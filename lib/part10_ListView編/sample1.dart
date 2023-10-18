import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'ListView Demo',
        home: Scaffold(
            body: Center(
              child: ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                Container(
                  child: Text('EntryA'),
                  color: Colors.amber[700],
                  alignment: Alignment.center,
                  width: 100,
                ),
                 Container(
                  child: Text('EntryB'),
                  color: Colors.amber,
                  alignment: Alignment.center,
                  width: 100,
                ),
                Container(
                  child: Text('EntryC'),
                  color: Colors.amber[50],
                  alignment: Alignment.center,
                  width: 100,
                ),
              ],
            )
            )));
  }
}
