import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar icon menu'),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          //leading: 간단한 위젯이나 아이콘 등을 앱 바 타이틀 왼쪽에 위치(앱바에만 쓰이는 거 아님)
          icon: Icon(Icons.menu),
          onPressed: () {
            //함수의 형태로 일반 버튼이나 아이콘 버튼 눌렀을 때 일어나는 이벤트를 정의해줌
            print('menu button is clicked');
          },
        ),
        actions: [
          //아이콘 버튼 등을 오른쪽에 배치
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              print('shopping cart button is clicked');
            },
          ),
          IconButton(
            //leading: 간단한 위젯이나 아이콘 등을 앱 바 타이틀 왼쪽에 위치(앱바에만 쓰이는 거 아님)
            icon: Icon(Icons.search),
            onPressed: () {
              print('search button is clicked');
            },
          ),
        ],
      ),
    );
  }
}
