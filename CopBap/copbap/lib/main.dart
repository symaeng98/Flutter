import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //디버그 마크 없앰
      title: 'CopBap',
      theme: ThemeData(
        //이게 왜 필요한 지 몰겠다 나는  ★★궁금★★
        primarySwatch: Colors.blue,
      ),
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CopBap'),
        centerTitle: true, //제목 가운데로
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              //계정 띄워주는??
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/초대형거인.jpg'), //프사
                backgroundColor: Colors.white,
              ),
              accountName: Text('김깅서'),
              accountEmail: Text('WanJonBanDae@MoSiJal.com'),
              onDetailsPressed: () {
                //더보기 창 만들기, 더보기 눌렀을 때 뭐 뜨게 하는 법 없나 ★★궁금★★
                print('뭐시잘');
              },
              decoration: BoxDecoration(
                //계정 창 꾸미기
                color: Colors.blue[400],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(40.0),
                ),
              ),
            ),
            ListTile(
              //목록
              leading: Icon(
                //leading: 아이콘이나 사진을 텍스트 앞에 넣어줌
                Icons.home,
                color: Colors.grey[850],
              ),
              title: Text('Home'),
              onTap: () {
                print('Home is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.grey[850],
              ),
              title: Text('Setting'),
              onTap: () {
                print('Setting is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Colors.grey[850],
              ),
              title: Text('Q&A'),
              onTap: () {
                print('Q&A is clicked');
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
