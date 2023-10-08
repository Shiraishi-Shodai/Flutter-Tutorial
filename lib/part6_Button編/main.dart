import 'package:flutter/material.dart';

void main() {
  
      xxx() {
      debugPrint("通信を始めます"); //デバッグコンソールに文字列を出力
      debugPrint("通信中です");
      debugPrint("通信が終りました");
    }

    final button = ElevatedButton(
      onPressed: xxx, //nullを設定するとボタンが押せなくなる
      ///ボタンを押したときに実行する関数を指定
      child: Text("押してみて"),

      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green
      )
    );

  final app = MaterialApp(
    home: Scaffold(
      body: Center(child: button)
    ),
  );

  runApp(app);
}
