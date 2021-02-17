import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            // デフォルト表示
            Text('Default'),
            // 太さを指定
            Text('Bold', style: TextStyle(fontWeight: FontWeight.bold)),
            // スタイルを指定
            Text('Italic', style: TextStyle(fontStyle: FontStyle.italic)),
            // サイズを指定
            Text('fontSize = 36', style: TextStyle(fontSize: 36)),
            // 色を指定
            Text('Red', style: TextStyle(color: Colors.red)),
            Container(
              width: double.infinity,
              color: Colors.grey,
              // 表示位置を指定
              child: Text('TextAlign.right', textAlign: TextAlign.right),
            ),
            Container(
              color: Colors.blue,
              child: Text('blue'),
            ),
            Container(
              width: 200,
              height: 50,
              child: Text('200x50'),
            ),
            Container(
              // 内側の余白（パディング）
              padding: EdgeInsets.all(8),
              // 外側の余白（マージン）
              margin: EdgeInsets.all(8),
              child: Text('padding / margin'),
            ),
            Container(
              decoration: BoxDecoration(
                // 枠線
                border: Border.all(color: Colors.blue, width: 2),
                // 角丸
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text('border'),
            ),
            Container(
              decoration: BoxDecoration(
                // 背景画像
                image: DecorationImage(
                  image: NetworkImage('https://placehold.jp/200x100.png'),
                ),
              ),
              child: Text('image'),
            ),
          ],
        ),
      ),
    );
  }
}
