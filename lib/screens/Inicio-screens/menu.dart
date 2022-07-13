// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:turismo/routes/rutas-menu.dart';
import 'package:turismo/screens/Inicio-screens/perfil.dart';
import 'package:turismo/widgets/bottom-nav.dart';
import 'package:turismo/widgets/curved-bottom-nav.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _InicioState();
}

class _InicioState extends State<Menu> {
  int index = 0;
  BottNav? botnavbar;
  BottomNavBar? curvbot;

  @override
  void initState() {
    curvbot = BottomNavBar(currentIndex: (i) {
      setState(() {
        index = i;
      });
    });
    user_profile();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: curvbot,
      body: Rutas(index: index),
    );
  }
}
