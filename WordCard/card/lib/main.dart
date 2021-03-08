import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //모든 custom widget은 또 다른 widget을 build하는 함수 가지고 있음
    return MaterialApp(
      title: 'ByeJyuJi',
      home: MyCard(),
    );
  }
}

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Scaffold : '뭔가를 해낼 수 있도록 발판을 만들어 주다' 라는 뜻, 빈 도화지 역할(중요)
      appBar: AppBar(
        title: Text('ByeJyuJi'),
        centerTitle: true, //제목을 가운데로 이동
        backgroundColor: Colors.black, //appbar색깔 설정
        elevation: 0.0, //appbar가 살짝 떠 있는 것 처럼 그림자 설정 되어있는데 0.0으로 설정하면 깔끔해짐
      ),
      body: Center(
        //Center는 단순히 화면 중앙에 배치하는 것이 아님
        child: Column(
          //Column은 세로축 제한이 없어서 mainAxis랑 같이 써야 정 중앙에 위치 할 수 있음
          //세로로 배치
          mainAxisAlignment:
              MainAxisAlignment.center, // axis: 축을 의미, 상단 중단 하단으로 정렬
          children: <Widget>[
            Text('Hello'),
            Text('Hello'),
            Text('Hello'),
          ],
        ),
      ),
    );
  }
}
