import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PageC extends StatelessWidget {
  const PageC({super.key});

  back(BuildContext context) {
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    final appBar =
        AppBar(backgroundColor: Colors.red, title: const Text('画面C'));

    return Scaffold(
      appBar: appBar,
      body: Center(
        child: ElevatedButton(
          child: Text('前の画面へ'),
          onPressed: () => back(context),)),);
  }
}
