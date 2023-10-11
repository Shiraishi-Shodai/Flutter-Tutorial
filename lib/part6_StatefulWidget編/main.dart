import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 0;
  String funType = 'plus';
  List<String> f = ['plus', 'minus', 'mult', 'division'];

  void _incrementCount(int a) {
    setState(() {
      count += a;
    });
  }

  void _funTypeSet(String fun) {
    setState(() {
      funType = fun;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              'ボタンを押すとカウントアップします。',
            ),
            Text(
              '$count',
            ),
            ElevatedButton(
              onPressed: () => _incrementCount(10),
              child: Text('カウントアップ'),
            ),
            // ElevatedButton(onPressed: onPressed, child: child)
          ],
        ),
      ),
    );
  }
}
