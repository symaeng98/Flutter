import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
      drawer: Drawer(
        child: ListView(
          //여러 줄 목록이기 때문에 children
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/Hyunsangsubae.jpg'),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/mad.jpg'),
                ),
                // CircleAvatar(
                //   backgroundColor: Colors.white,
                //   backgroundImage: AssetImage('assets/mad.jpg'),
                // ),
              ],
              accountName: Text('셔츠 마술사'),
              accountEmail: Text('shirtmagician@eunalove.com'),
              onDetailsPressed: () {
                print('Details are clicked');
              },
              decoration: BoxDecoration(
                  color: Colors.red[200],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0),
                  )),
            ),
            ListTile(
              leading: Icon(
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
