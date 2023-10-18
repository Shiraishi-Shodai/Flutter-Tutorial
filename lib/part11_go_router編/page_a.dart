import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PageA extends StatelessWidget {
  const PageA({super.key});

  push(BuildContext context) {
    context.push(('/b'));
  }

  @override
  Widget build(BuildContext context) {
    final appBar =
        AppBar(backgroundColor: Colors.red, title: const Text('画面A'));

    return Scaffold(
      appBar: appBar,
      body: Center(
        child: ElevatedButton(
          onPressed: ()=> push(context),
          child: Text('次の画面へ'),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
        )
      ));
  }
}
