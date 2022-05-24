// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:turismo/screens/Inicio-screens/inicio.dart';
import 'package:turismo/screens/Inicio-screens/mis-paquetes.dart';
import 'package:turismo/screens/Inicio-screens/perfil.dart';

class Rutas extends StatelessWidget {
  final int index;
  const Rutas({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> ListaW = [
      const Inicio(),
      const MisPaquetes(),
      Perfil(),
    ];
    return ListaW[index];
  }
}
