import 'package:flutter/material.dart';

class BananaCounter extends StatelessWidget {
  // バナナの数
  final int number;
  const BananaCounter({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    final img = Image.asset("images/banana.png");

    final count = Text("$number",
        style: const TextStyle(color: Colors.yellow, fontSize: 50));

    final row = Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [img, count],
    );

    final con = Container(
      color: Colors.black87,
      child: row,
    );

    return con;
  }
}
