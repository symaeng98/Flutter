import 'package:flutter/material.dart';
import 'package:refactoring/my_button/my_button.dart';

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Sign In',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0.2,
      ),
      body: _buildButton(),
    );
  }
}

Widget _buildButton() {
  return Padding(
    padding: EdgeInsets.all(16.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MyButton(
          image: Image.asset('images/glogo.png'),
          text: Text(
            'Log In with Google',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 15.0,
            ),
          ),
          color: Colors.white,
          radius: 4.0,
          onPressed: () {},
        ),
        SizedBox(
          height: 10.0,
        ),
        MyButton(
          image: Image.asset('images/flogo.png'),
          text: Text(
            'Log In with Facebook',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.0,
            ),
          ),
          color: Colors.blue[900],
          radius: 4.0,
          onPressed: () {},
        ),
        SizedBox(
          height: 10.0,
        ),
        MyButton(
          image: Icon(
            Icons.mail,
            color: Colors.white,
          ),
          text: Text(
            'Log In with E-mail',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.0,
            ),
          ),
          color: Colors.green[600],
          radius: 4.0,
          onPressed: () {},
        ),
      ],
    ),
  );
}
