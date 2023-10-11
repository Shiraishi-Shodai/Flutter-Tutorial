import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  const app = MaterialApp(home: Sample());
  // アプリをプロバイダースコープで囲む
  const scope = ProviderScope(child: app);

  runApp(scope);
}

// プロバイダーで管理するデータを容易
final nicknameProvider = StateProvider<String>((ref) {
  return 'ルビードッグ';
});

// 画面を用意、ref(nicknameProviderのデータを書き換えるための鍵)を取得
class Sample extends ConsumerWidget {
  const Sample({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // データを監視
    final nickname = ref.watch(nicknameProvider);

    return Scaffold(
        appBar: AppBar(title: Text('AppBar')),
        body: SizedBox(
            width: double.infinity, // 幅を無限のサイズに指定
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(nickname),
                  ElevatedButton(
                      onPressed: () => topA(ref), child: Text("ボタン1")),
                  ElevatedButton(
                      onPressed: () => topB(ref), child: Text("ボタン2")),
                  ElevatedButton(
                      onPressed: () => topC(ref), child: Text("ボタン3")),
                  Text(nickname),
                ])));
    ;
  }

  // ノティファイアでデータを変更する
  topA(WidgetRef ref) {
    final notifiere = ref.read(nicknameProvider.notifier);
    notifiere.state = 'ルビーキャット';
  }

    topB(WidgetRef ref) {
    final notifiere = ref.read(nicknameProvider.notifier);
    notifiere.state = 'ルビードッグ';
  }

  topC(WidgetRef ref) {
    final notifiere = ref.read(nicknameProvider.notifier);
    notifiere.state = 'ルビーバード';
  }


  
}
