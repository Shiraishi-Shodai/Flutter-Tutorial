import 'package:flutter/material.dart';

void main() {
  const String? a = null;
  const text = Text("$a" ?? 'null');

  const app = MaterialApp(
    home: Scaffold(
      body: Center(child: text),
    ),
  );

  runApp(app);
}
