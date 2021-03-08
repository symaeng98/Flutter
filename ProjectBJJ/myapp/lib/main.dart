import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //모든 custom widget은 또 다른 widget을 build하는 함수 가지고 있음
    return MaterialApp(
      title: 'ByeJyuJi',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Scaffold : '뭔가를 해낼 수 있도록 발판을 만들어 주다' 라는 뜻, 빈 도화지 역할(중요)
      appBar: AppBar(
        title: Text(
            'ByeJyuJi'), //AppBar에서는 Text 왜 불러옴? => MaterialApp에서는 ㄹㅇ 그 자체로 title인거고 AppBar에서는 말 그대로 앱 화면에서 보여지는 title
      ),
      body: Center(
        //body: => Scaffold에서 가장 중요
        child: Column(
          children: <Widget>[
            //[]는 List니까 안에 세로로 정렬될 것들을 입력
            Text('wow'), //코드에 문제 없는데 빨간줄 뜨면 ',' 넣었는 지 확인
            Text('wow'),
            Text('waa')
          ],
        ),
      ),
    );
  }
}
