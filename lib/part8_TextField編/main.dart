import 'package:flutter/material.dart';

void main() {
  final cont = TextEditingController();
  final a = TextField(
    controller: cont,
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: 'あなたの名前', //入力する項目名
      hintText: 'カタカナで入力してください', //注意書き
      errorText: '名前が長すぎます', // 入力エラー時の表示
    ),
  );

  xxx() {
    debugPrint(cont.text);
  }

  final btn = ElevatedButton(
    onPressed: xxx,
    child: Text('ボタン'),
  );

  final colum = Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [a, btn]
    );

  final app = MaterialApp(home: Scaffold(body: Center(child: colum)));

  runApp(app);
}
