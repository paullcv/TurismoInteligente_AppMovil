// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomNavBar extends StatefulWidget {
  final Function currentIndex;
  const BottomNavBar({Key? key, required this.currentIndex}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      key: _bottomNavigationKey,
      index: 0,
      height: 60.0,
      items: const <Widget>[
        Icon(Icons.home, size: 30),
        Icon(Icons.card_travel, size: 30),
        Icon(Icons.person, size: 30),
      ],
      color: const Color.fromARGB(255, 192, 192, 192),
      buttonBackgroundColor: Colors.white,
      backgroundColor: const Color.fromARGB(255, 63, 55, 55),
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 400),
      onTap: (int value) {
        setState(() {
          widget.currentIndex(value);
        });
      },
      letIndexChange: (index) => true,
    );
  }
}
