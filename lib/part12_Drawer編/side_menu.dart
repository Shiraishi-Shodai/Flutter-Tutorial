import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {

    // ヘッダー
    final header = DrawerHeader(
      padding: EdgeInsets.all(0),
      margin: EdgeInsets.all(0),
        child: Container(
          color: Colors.green,
          alignment: Alignment.center,
          child: Text('ドロワーヘッダー')));
    // リストタイル
    final titleA = ListTile(
      title: Text('リストタイルA'),
      leading: Icon(Icons.account_circle),
      onTap: () {
        print('Aをクリック');
      },
    );
    final titleB = ListTile(
        title: Text('リストタイルB'),
        // leading: ,
    );
    final titleC = ListTile(
        title: Text('リストタイルC')
    );
    final titleD = ListTile(
        title: Text('リストタイルD')
    );
    final titleE = ListTile(
        title: Text('リストタイルE')
    );
    return ListView(
      children: [header, titleA, titleB, titleC, titleD, titleE],
    );
  }
}
