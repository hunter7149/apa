// ignore: unused_import
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:apa/pages/Login_Page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ApaApp());
}

class ApaApp extends StatefulWidget {
  const ApaApp({Key? key}) : super(key: key);

  @override
  _ApaAppState createState() => _ApaAppState();
}

class _ApaAppState extends State<ApaApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
          splashIconSize: 200,
          animationDuration: Duration(milliseconds: 900),
          duration: 1,
          splashTransition: SplashTransition.fadeTransition,
          splash: Image.asset("assets/Logo.png"),
          nextScreen: Login_Page()),
    );
  }
}
