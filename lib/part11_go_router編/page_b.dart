import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PageB extends StatelessWidget {
  const PageB({super.key});

  // 次へボタンを押した時
  push(BuildContext context) {
    context.push('/c');
  }

// 戻るボタンを押した時
  back(BuildContext context) {
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    final btnContainer = Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
          child: Text('前の画面へ', style: TextStyle(fontSize: 15)),

          // アロー関数で書かないと、このファイルが読み込まれた時に関数が実行されてしまう
          onPressed: () => back(context),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
        ),
        ElevatedButton(
          child: Text('次の画面へ', style: TextStyle(fontSize: 15)),
          onPressed: () => push(context),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
        )
      ],
    );

    final appBar =
        AppBar(backgroundColor: Colors.red, title: const Text('画面B'));

    return Scaffold(
        appBar: appBar,
        body: Center(
            child: Container(
          child: btnContainer,
          width: 300,
          height: 100,
          decoration: BoxDecoration(color: Colors.amber),
        )));
  }
}
