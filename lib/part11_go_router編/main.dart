import 'package:flutter/material.dart';
import 'package:flutter_base/part11_go_router編/page_a.dart';
import 'package:flutter_base/part11_go_router編/page_b.dart';
import 'package:flutter_base/part11_go_router編/page_c.dart';

import 'package:go_router/go_router.dart';

void main() {
  final app = MaterialApp(
    home: App()
  );
  runApp(app);
}

// アプリ全体
class App extends StatelessWidget {
  App({super.key});

  final router = GoRouter(
    // アプリが始まるパス
    initialLocation: '/a',
    routes: [
      // パスと画面の組み合わせ
      GoRoute(
        path: '/a',
        builder: (context, state) => PageA(),
      ),
      GoRoute(
        path: '/b',
        builder: (context, state) => PageB(),
      ),
      GoRoute(
        path: '/c',
        builder: (context, state) => PageC(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // //現在のルート情報を提供するプロパティ
      // routeInformationProvider: router.routeInformationProvider,
      // //ルート文字列をルートオブジェクトに変換するプロパティ
      // routeInformationParser: router.routeInformationParser,
      // //画面遷移を管理するプロパティ
      // routerDelegate: router.routerDelegate,  

      routerConfig: router,
    );
  }
}
