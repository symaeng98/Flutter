import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '셔츠 마술사',
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[200],
      appBar: AppBar(
        title: Text('셔츠 마술사'),
        backgroundColor: Colors.indigo[400],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, //가로 축 정렬인데, start는 시작부분으로 정렬(한컴 느낌)
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/Hyunsangsubae.jpg'),
                radius: 60.0, //circle의 크기 조정
              ),
            ),
            Divider(
              height: 60.0, //위 아래 합쳐서 60임, 사진하고 선하고 거리==30
              color: Colors.grey[850],
              thickness: 0.5,
              endIndent:
                  30.0, //처음에 EdgeInsets로 30픽셀정도 떨어져서 정렬해줘서 우측 끝에서 30픽셀정도 떼어놓음
            ),
            Text(
              'Name',
              style: TextStyle(
                //글자 스타일 지정
                color: Colors.white, //색깔은 white
                letterSpacing: 2.0, //글자간격
              ),
            ),
            SizedBox(
              //단어 사이의 간격, 투명 상자를 넣어준다 생각
              height: 10.0,
            ),
            Text(
              '셔츠 마술사',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold), //글씨체
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              '변기 파괴 횟수',
              style: TextStyle(
                //글자 스타일 지정
                color: Colors.white, //색깔은 white
                letterSpacing: 2.0, //글자간격
              ),
            ),
            SizedBox(
              //단어 사이의 간격, 투명 상자를 넣어준다 생각
              height: 10.0,
            ),
            Text(
              '14',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold), //글씨체
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              //아이콘 + 텍스트 가로로 나열할 때 사용
              children: <Widget>[
                Icon(Icons.check_circle_outline), //왼쪽에 아이콘 표시
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  '헬로쥬지 CEO 및 욕받이',
                  style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                ),
              ],
            ),
            Row(
              //아이콘 + 텍스트 가로로 나열할 때 사용
              children: <Widget>[
                Icon(Icons.check_circle_outline), //왼쪽에 아이콘 표시
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  '셔츠 마술 자격증 보유',
                  style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                ),
              ],
            ),
            Row(
              //아이콘 + 텍스트 가로로 나열할 때 사용
              children: <Widget>[
                Icon(Icons.check_circle_outline), //왼쪽에 아이콘 표시
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  '셔츠로 때림',
                  style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/attack.gif'),
                radius: 70.0,
                backgroundColor: Colors.indigo[200],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
