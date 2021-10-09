import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
        animationDuration: Duration(milliseconds: 200),
        animationCurve: Curves.easeInOut,
        backgroundColor: Colors.white,
        buttonBackgroundColor: Color.fromARGB(255, 140, 0, 105),
        color: Color.fromARGB(255, 139, 0, 104),
        height: 50,
        items: <Widget>[
          Icon(Icons.camera_rear_outlined, size: 30),
          Icon(Icons.photo_album_rounded, size: 30),
          Icon(Icons.compare_arrows, size: 30),
        ],
        onTap: (index) {});
  }
}
