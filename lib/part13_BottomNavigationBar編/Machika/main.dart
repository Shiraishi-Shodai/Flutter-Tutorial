import 'package:flutter/material.dart';
import 'package:flutter_base/part13_BottomNavigationBar%E7%B7%A8/Machika/page_favorite.dart';
import 'package:flutter_base/part13_BottomNavigationBar%E7%B7%A8/Machika/page_menber.dart';
import 'package:flutter_base/part13_BottomNavigationBar%E7%B7%A8/Machika/page_saved_coupons.dart';
import 'package:flutter_base/part13_BottomNavigationBar%E7%B7%A8/Machika/page_store_search.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {

  const app = MaterialApp(
    home: MyApp());

// スコープ
  final scope = ProviderScope(child: app);
  runApp(scope);
}

// プロバイダー
final indexProvider = StateProvider<int>((ref) => 0);

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // プロバイダーを監視
    final index = ref.watch(indexProvider);

    // アイテムたち
    const items = [
      BottomNavigationBarItem(icon: Icon(Icons.search), label: 'お店検索',),
      BottomNavigationBarItem(icon: Icon(Icons.save_alt), label: '保存済みクーポン'),
      BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: 'お気に入り'),
      BottomNavigationBarItem(icon: Icon(Icons.person), label: '会員ページ'),
    ];

    // ボトムナビゲーションバー
    final navBar = BottomNavigationBar(
      // アイテムを選択した時、固定してアイテムを表示する
      // type: BottomNavigationBarType.shiftingにすると、スライドしながらアイテムが表示される
      type: BottomNavigationBarType.fixed, 
      showUnselectedLabels: true, //非アクティブなアイテムのラベルを表示する
      items: items,
      currentIndex: index,
      // インデックスを変更
      onTap: (index) {
        ref.read(indexProvider.notifier).state = index;
      },
      backgroundColor: Colors.white,
      // enableFeedback: true, //音・触覚のレスポンスをONにする
      // selectedFontSize: 15,
      selectedItemColor: Colors.red,
      // unselectedFontSize: 10,
      unselectedItemColor: Colors.grey,
    );

    // ページ
    final pages = [Store_Search(), Page_Saved_Coupons(), Page_Favorite(), Page_Menber()];

    return  Scaffold(
      bottomNavigationBar: navBar,
      body: Center(
        child: pages[index]),
    );
  }
}
