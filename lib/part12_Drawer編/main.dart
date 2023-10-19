import 'package:flutter/material.dart';
import 'package:flutter_base/part12_Drawer編/side_menu.dart';
void main() {
  final drawer = Drawer(
    child: SideMenu(),
  );

  final body = Text('ボディー');
  final app = MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('Appバー')),
      drawer: drawer,
      body: body,
    ),
  );

  runApp(app);
}