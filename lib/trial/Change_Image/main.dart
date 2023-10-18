import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  final animal = Animal();
  final app = MaterialApp(home: animal);
  final scope = ProviderScope(child: app);
  runApp(scope);
}

final imgNameProvider = StateProvider<String>((ref) => 'assets/images/mona_lisa.jpg');

class Animal extends ConsumerWidget {
  const Animal({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // imgNameを監視
    final imgName = ref.watch(imgNameProvider);

    final text = Text('ボタンを選択して動物の写真を表示しよう！', style: TextStyle(fontSize: 24));

    final btnRow = Container(
        alignment: Alignment.bottomCenter,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () => toDog(ref),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, //ボタンの背景色
                      minimumSize: Size(100, 100)),
                  child: Text('犬')),
              ElevatedButton(
                  onPressed: () => toCat(ref),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink, //ボタンの背景色
                      minimumSize: Size(100, 100)),
                  child: Text('猫')),
              ElevatedButton(
                  onPressed: () => toFlog(ref),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, //ボタンの背景色
                      minimumSize: Size(100, 100)),
                  child: Text('カエル')),
              ElevatedButton(
                  onPressed: () => toSheep(ref),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white12, //ボタンの背景色
                      minimumSize: Size(100, 100)),
                  child: Text('ひつじ')),
            ]));

    // 画像コンテナ
    final imgCon = Container(
      width: 300,
      height: 230,
      // コンテナのサイズに画像サイズを合わせる
      child: Image.asset(imgName, fit: BoxFit.contain),
    );

    return Scaffold(
        appBar: AppBar(title: Text('Change Image')),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [text, btnRow, imgCon])));
  }
}

// ノティファイアでimgNameの値を変える
toDog(ref) {
  final notifire = ref.read(imgNameProvider.notifier);
  notifire.state = 'images/dog.jpg';
}

toCat(ref) {
  final notifire = ref.read(imgNameProvider.notifier);
  notifire.state = 'images/cat.jpeg';
}

toFlog(ref) {
  final notifire = ref.read(imgNameProvider.notifier);
  notifire.state = 'images/flog.jpg';
}

toSheep(ref) {
  final notifire = ref.read(imgNameProvider.notifier);
  notifire.state = 'images/sheep.jpg';
}
