import 'package:flutter/material.dart';

void main() {
  final img = Image.asset('images/cat.jpeg');

  final col = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Image.asset(
        //   'images/cat.png'
        // ),

        Image.network('https://flutter-image-network.web.app/inu.jpeg')
      ]);

  final row = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
    children: [
      img
    ],
  );


  final a = MaterialApp(
    home: Scaffold(
      body: Center(
        child: row,
      ),
    ),
  );

  runApp(a);
}
