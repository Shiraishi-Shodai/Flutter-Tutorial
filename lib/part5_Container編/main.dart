import 'package:flutter/material.dart';

void main() {
  final img = Image.asset('images/cat.jpeg');

  final con2 = Container(
    color: Color.fromARGB(255, 10, 236, 104),
    width: 50,
    height: 30,
  );

  final col = Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      con2, con2, con2
    ],
  );

  final con = Container(
    color: Colors.purple,
    width: 400,
    height: 280,
    child: col,
    // container内におけるchildの位置を指定
    alignment: Alignment.centerLeft,
//   padding：Containerの内側の余白
// 　margin：Containeの外側の余白
    // padding: EdgeInsets.all(20),
    padding: EdgeInsets.fromLTRB(30, 20, 0, 40), //左から時計回り
  );

  final a = MaterialApp(
    home: Scaffold(
      body: Center(
        child: con,
      ),
    ),
  );

  runApp(a);
}
