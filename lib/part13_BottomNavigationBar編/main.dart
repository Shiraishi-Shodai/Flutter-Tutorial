import 'package:flutter/material.dart';
import 'package:flutter_base/part13_BottomNavigationBar編/page_a.dart';
import 'package:flutter_base/part13_BottomNavigationBar編/page_b.dart';
import 'package:flutter_base/part13_BottomNavigationBar編/page_c.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  final pageA = PageA();
  final pageB = PageB();
  final pageC = PageC();
  const app = MaterialApp(home: Root());

  const scope = ProviderScope(child: app);
  runApp(scope);
}

// プロバイダー
final indexProvider = StateProvider((ref) => 0);

class Root extends ConsumerWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // データを監視
    final index = ref.watch(indexProvider);

    // アイテムたち(それぞれのアイテムはインデックスを持っている？)
    const items = [
      BottomNavigationBarItem(icon: Icon(Icons.person), label: 'アイテムA'),
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'アイテムB'),
      BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'アイテムC'),
    ];

    // バーを定義
    final bar = BottomNavigationBar(
      items: items, //バーに表示する要素
      backgroundColor: Colors.red, //背景の色
      selectedItemColor: Colors.white, //選択されたアイテムの色
      unselectedItemColor: Colors.black, //選択されていないアイテムの色
      currentIndex: index,
      // タップされた時、インデックスを変更する
      onTap: (index) {
        debugPrint('インデックス: $index');
        ref.read(indexProvider.notifier).state = index;
      },
    );

    // 画面たち
    final pages = [PageA(), PageB(), PageC()];

    return Scaffold(
      body: Center(
        child: pages[index],
      ),
      bottomNavigationBar: bar,
    );
  }
}
