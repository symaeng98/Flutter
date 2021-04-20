import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:uber/AllScreens/mainscreen.dart';
import 'package:uber/AllScreens/registerationScreen.dart';
import 'package:uber/AllWidgets/progressDialog.dart';
import 'package:uber/main.dart';

class LoginScreen extends StatelessWidget {
  static const String idScreen = "Login";
  final TextEditingController emailEditingController = TextEditingController();
  final TextEditingController passwordEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 35.0,
            ),
            Image(
              image: AssetImage('images/logo.png'),
              width: 350.0,
              height: 350.0,
              alignment: Alignment.center,
            ),
            SizedBox(
              height: 1.0,
            ),
            Text(
              "Login as a Rider",
              style: TextStyle(
                fontSize: 24.0,
                fontFamily: "Brand Bold",
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 1.0,
                  ),
                  TextField(
                    controller: emailEditingController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(
                          fontSize: 14.0,
                        ),
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 10.0,
                        )),
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  SizedBox(
                    height: 1.0,
                  ),
                  TextField(
                    controller: passwordEditingController,
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(
                          fontSize: 14.0,
                        ),
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 10.0,
                        )),
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.yellow,
                      textStyle: TextStyle(
                        color: Colors.white,
                      ),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(24.0),
                      ),
                    ),
                    onPressed: () {
                      if (!emailEditingController.text.contains("@")) {
                        displayToastMessage(
                            "Email address is not valid", context);
                      } else if (passwordEditingController.text.isEmpty) {
                        displayToastMessage("Password is mandatory.", context);
                      } else {
                        loginAndAuthenticateUser(context);
                      }
                    },
                    child: Container(
                      height: 50.0,
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontFamily: "Brand Bold",
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.black,
              ),
              child: Text("Do not have an Account? Register Here."),
              onPressed: () {
                //눌렀을 때 Registeration Page로 이동해야한다.
                Navigator.pushNamedAndRemoveUntil(
                    context, RegistrationScreen.idScreen, (route) => false);
              },
            ),
          ],
        ),
      ),
    );
  }

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  void loginAndAuthenticateUser(BuildContext context) async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return ProgressDialog(
          message: "Authenticating, Please Wait...",
        );
      },
    );

    final User firebaseUser = (await _firebaseAuth
            .signInWithEmailAndPassword(
                email: emailEditingController.text,
                password: passwordEditingController.text)
            .catchError((errMsg) {
      Navigator.pop(context);
      displayToastMessage("Error: " + errMsg.toString(), context);
    }))
        .user;

    if (firebaseUser != null) {
      //user created
      //save user info to database

      usersRef.child(firebaseUser.uid).once().then((DataSnapshot snap) {
        if (snap.value != null) {
          Navigator.pushNamedAndRemoveUntil(
              context, MainScreen.idScreen, (route) => false);
          displayToastMessage("You are logged-in now.", context);
        } else {
          Navigator.pop(context);
          _firebaseAuth.signOut();
          displayToastMessage(
              "No record exists for this user. Please create new account.",
              context);
        }
      });
    } else {
      Navigator.pop(context);
      //error occured - display error msg
      displayToastMessage("Error occured, cannot be founded", context);
    }
  }
}
