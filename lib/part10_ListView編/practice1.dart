import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> itemList = <String>['A', 'B', 'C'];
    final List<int> colorList = <int>[600, 400, 200];

    final abcList = ListView.builder(
        itemCount: itemList.length,
        itemBuilder: (c, index) {
          return Container(
            height: 100,
            width: 300,
            color: Colors.green[colorList[index]],
            child: Text(itemList[index]),
            alignment: Alignment.center,
          );
        });

    // 現在時刻を取得
    DateTime now = DateTime.now();
    print('現在時刻: $now');
    // 時間を進める
    DateTime tomorrow = now.add(const Duration(days: 1));
    print('一日後: $tomorrow');
    // 時間を巻き戻す
    DateTime yesterday = now.subtract(const Duration(days: 1));
    print('一日前: $yesterday');

    return MaterialApp(
        title: 'ListView Practice',
        theme: ThemeData(primarySwatch: Colors.green),
        home: Scaffold(
            appBar: AppBar(
              title: const Text('ListView Practice'),
            ),
            body: Center(child: abcList)));
  }
}
