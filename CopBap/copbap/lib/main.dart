import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart'; //토스트 이용하기 위해 import

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //디버그 마크 없앰
      title: 'CopBap',
      theme: ThemeData(
        //이게 왜 필요한 지 몰겠다 나는  ★★궁금★★ -> 살짝 defaul 값 느낌?
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
      // body: Builder(
      //   //builder 함수 이용 SnackBar
      //   builder: (BuildContext ctx) {
      //     return Center(
      //       child: FlatButton(
      //         //입체감 없이 화면에 flat하게 나타냄
      //         child: Text(
      //           'Show me',
      //           style: TextStyle(
      //             color: Colors.white,
      //           ),
      //         ),
      //         color: Colors.red,
      //         onPressed: () {
      //           Scaffold.of(ctx).showSnackBar(SnackBar(
      //             //Builder 위젯이 가리키는? Scaffold 반환
      //             // smth.of() 는 위로 거슬러 올라가면서 가장 가까운 smth을 찾아서 반환한다
      //             content: Text('Hello'),
      //           ));
      //         },
      //       ),

      //     );
      //   },
      // ),

      body: MySnackBar(), //위젯 만들어서 SnackBar이용

      // body: Center(
      //   child: FlatButton(
      //     onPressed: (){
      //       flutterToast();
      //     },
      //     child: Text ('Toast'),
      //     color: Colors.blue
      //   ),
      //   ),

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

void flutterToast() {
  //토스트 함수 생성
  Fluttertoast.showToast(
    msg: 'Flutter',
    gravity: ToastGravity.BOTTOM, //메세지 뜨는 곳, 저게 그런 설정인지 어케아는교?
    backgroundColor: Colors.redAccent,
    fontSize: 20.0,
    textColor: Colors.white,
    toastLength: Toast.LENGTH_SHORT, //시간
  );
}

class MySnackBar extends StatelessWidget {
  //Custom Widget 생성
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          child: Text('Show me'),
          onPressed: () {
            Scaffold.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'Hello',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Colors.teal,
                duration: Duration(milliseconds: 1000),
              ),
            );
          }),
    );
  }
}
