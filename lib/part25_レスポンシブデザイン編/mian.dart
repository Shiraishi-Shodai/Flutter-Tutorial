import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  const app = MaterialApp(home: MyApp());
  // Riverpodと一緒に使う時はこう
  const scope = ProviderScope(child: app);

  // webで動いている時はデバイスプレビューを使う
  if (kIsWeb) {
    // デバイスプレビューで囲む
    final devicePreview = DevicePreview(builder: (_) => scope);
    runApp(devicePreview);
  } else {
    runApp(scope);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 画面サイズ
    final screenSize = MediaQuery.of(context).size;

    // コンテナの横幅
    final width = 200 * (screenSize.width / 390);

    // 画面の向き
    final o = MediaQuery.of(context).orientation;

    String text;
    // if (screenSize.width > 1000) {
    //   text = 'これはパソコンサイズです';
    // } else if (screenSize.width > 600) {
    //   text = 'これはタブレットサイズです';
    // } else if (screenSize.width > 320) {
    //   text = 'これはスマホサイズです';
    // } else {
    //   text = '画面が小さすぎます';
    // }

    if (o == Orientation.portrait) {
      text = '縦向きです';
    } else {
      text = '横向きです';
    }

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.amber,
          width: width,
          child: Text(
            text,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
