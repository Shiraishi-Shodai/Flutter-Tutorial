import 'package:flutter/material.dart';

void main() {
  final col = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("レモン"),
        Text("リンゴ"),
        Text("ブドウ"),
      ]);

  final row = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
    children: [
      Text("キャベツ"),
      Text("トマト"),
      Text("ブロッコリー"),
    ],
  );

  final row2 = Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [col, col, col],
  );

  final a = MaterialApp(
    home: Scaffold(
      body: Center(
        child: row2,
      ),
    ),
  );

  runApp(a);
}
