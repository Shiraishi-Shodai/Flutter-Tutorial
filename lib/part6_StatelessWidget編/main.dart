import 'package:flutter/material.dart';
import 'package:flutter_base/part6_StatelessWidget%E7%B7%A8/banana_counter.dart';

void main() {
  const bnn = BananaCounter(
    number: 9
  );

  const a = MaterialApp(home: Scaffold(body: Center(child: bnn)));

  runApp(a);
}
