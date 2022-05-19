// ignore_for_file: file_names

import 'package:flutter/material.dart';

class BottNav extends StatefulWidget {
  final Function currentIndex;
  const BottNav({Key? key, required this.currentIndex}) : super(key: key);

  @override
  State<BottNav> createState() => _BottNavState();
}

class _BottNavState extends State<BottNav> {
  int _currentTab = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: const Color.fromARGB(255, 120, 177, 205),
      backgroundColor: Colors.white,
      currentIndex: _currentTab,
      onTap: (int value) {
        setState(() {
          _currentTab = value;
          widget.currentIndex(value);
        });
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            size: 30,
          ),
          label: ('Inicio'),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.card_travel,
            size: 30,
          ),
          label: ('Mis Paquetes'),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            size: 32,
          ),
          label: ('Perfil'),
        ),
      ],
    );
  }
}
