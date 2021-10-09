import 'package:apa/pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:auth_buttons/auth_buttons.dart';

// ignore: camel_case_types
class Login_Page extends StatelessWidget {
  const Login_Page({Key? key}) : super(key: key);
  final String pg = "Welcome Durjoy!";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 80, 0, 63),
                Color.fromARGB(255, 50, 1, 60)
              ],
            )),
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                ),
                Container(
                  width: 280,
                  child: Card(
                    elevation: 25.0,
                    child: Image.asset("assets/Logo.png"),
                    color: Colors.transparent,
                    shape: CircleBorder(),
                  ),
                ),
                SizedBox(
                  height: 180,
                ),
                GoogleAuthButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  style: AuthButtonStyle(
                      height: 50,
                      elevation: 35,
                      width: 210,
                      borderColor: Colors.white,
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w100),
                      buttonColor: Color.fromARGB(0, 100, 0, 50)),
                ),
                SizedBox(
                  height: 30,
                ),
                AppleAuthButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  style: AuthButtonStyle(
                      height: 50,
                      width: 210,
                      elevation: 35,
                      borderColor: Colors.white,
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w100),
                      buttonColor: Color.fromARGB(0, 100, 0, 50)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
