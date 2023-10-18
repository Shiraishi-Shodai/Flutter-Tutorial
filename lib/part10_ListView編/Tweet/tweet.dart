import 'package:flutter/material.dart';

class Tweet {
  final String username; //ユーザー名
  final String iconUrl; //アイコンURL
  final String message; //文章
  final String createdAt; //投稿日時

  Tweet(this.username, this.iconUrl, this.message, this.createdAt);
}

final List<Tweet> modelList = [
  Tweet('ルフィ', 'images/icon1.png', '海賊王におれはなる！', '2022/1/1'),
  Tweet('ゾロ', 'images/icon2.png', 'おれはもう！二度と敗けねェから！', '2022/1/2'),
  Tweet('ナミ', 'images/icon3.png', 'もう背中向けられないじゃないっ！', '2022/1/3'),
  Tweet('ウソップ', 'images/icon4.png', 'お前らの”伝説のヒーロー”になってやる！', '2022/1/4'),
  Tweet('サンジ', 'images/icon5.png', 'たとえ死んでもおれは女は蹴らん・・・！', '2022/1/5'),
  Tweet('チョッパー', 'images/icon6.png', '人間ならもっと自由だ！', '2022/1/6'),
  Tweet('ビビ', 'images/icon7.png', 'もう一度仲間と呼んでくれますか!?', '2022/1/7'),
  Tweet('ロビン', 'images/icon8.png', '生ぎたいっ！', '2022/1/8'),
  Tweet('フランキー', 'images/icon9.png', '存在することは罪にはならねェ！', '2022/1/9'),
  Tweet('ブルック', 'images/icon10.png', '男が一度・・・必ず帰ると言ったのだから！', '2022/1/10'),
  Tweet('ジンベイ', 'images/icon11.png', '失ったものばかり数えるな！', '2022/1/11'),
  Tweet('シャンクス', 'images/icon1.png', 'この帽子をお前に預ける', '2022/2/1'),
  Tweet('ヒルルク', 'images/icon2.png', '違う!…人に忘れられた時さ…!', '2022/2/2'),
  Tweet('ドクタークレハ', 'images/icon3.png', '優しいだけじゃ人は救えないんだ!', '2022/2/3'),
  Tweet('ティーチ', 'images/icon4.png', '人の夢は!終わらねェ!', '2022/2/4'),
  Tweet('ガンフォール', 'images/icon5.png', '人の生きるこの世界に“神”などおらぬ!', '2022/2/5'),
  Tweet('ボンクレー', 'images/icon6.png', '理由なんざ他にゃいらねェ!', '2022/2/6'),
  Tweet('イワンコフ', 'images/icon7.png', '“奇跡”ナメるんじゃないよォ!', '2022/2/7'),
  Tweet('ニューゲート', 'images/icon8.png', 'バカな息子をそれでも愛そう・・・', '2022/1/8'),
  Tweet('エース', 'images/icon9.png', '愛してくれて・・・ありがとう', '2022/2/9'),
  Tweet('ロー', 'images/icon10.png', '取るべきイスは…必ず奪う!', '2022/2/10'),
  Tweet('サボ', 'images/icon11.png', '以後ルフィのバックにはおれがついてる!', '2022/2/11'),
  Tweet('バルトロメオ', 'images/icon1.png', 'この子分盃!勝手に頂戴いたしますだべ!', '2022/3/1'),
];

// リストにする要素を作る
Widget makePosting(Tweet model) {
  final icon = Container(
    width: 50.0,
    height: 50.0,
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            image: AssetImage('${model.iconUrl}'), fit: BoxFit.fill)),
  );

  final name = Container(
      child: Text(
    "${model.username}    ${model.createdAt}",
    style: TextStyle(fontSize: 15, decoration: TextDecoration.underline),
  ));

// アイコンと名前、時間を横並びにする
  final iconNameContainer = Container(
      padding: const EdgeInsets.all(3),
      width: 250,
      height: 50,
      color: Colors.amber,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [icon, name],
      ));
// メッセージコンテナ
  final messageContainer = Container(
      // decoration: BoxDecoration(
      //   border: Border.all(),
      //   ),
      color: Colors.white,
      width: 350,
      height: 50,
      padding: EdgeInsets.all(5),
      child: Text(
        '${model.message}',
        style: TextStyle(color: Colors.black, fontSize: 20),
        textAlign: TextAlign.center,
      ));

// ツイートコンテナ
  final tweetContainer = Container(
    width: 400,
    height: 180,
    color: Colors.blue,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [iconNameContainer, messageContainer],
    ),
    alignment: Alignment.center,
  );

  return tweetContainer;
}

void main() {
  final app = MaterialApp(
      title: 'リストビューテスト',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false, //デバッグモードであることを示す赤いリボンを消す
      home: Scaffold(
        // アプリケーションバー
        appBar: AppBar(
          title: Text('リストビュー'),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.favorite))],
        ),
        body: Center(
          child: ListView.builder(
            itemCount: modelList.length,
            itemBuilder: (c, i) {
              return makePosting(modelList[i]);
            })),
      ));

  runApp(app);
}
