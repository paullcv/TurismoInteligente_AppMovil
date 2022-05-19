// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:turismo/routes/rutas-menu.dart';
import 'package:turismo/widgets/bottom-nav.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _InicioState();
}

class _InicioState extends State<Menu> {
  int index = 0;
  BottNav? botnavbar;

  @override
  void initState() {
    botnavbar = BottNav(currentIndex: (i) {
      setState(() {
        index = i;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: botnavbar,
      body: Rutas(index: index),
    );
  }
}
