import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
