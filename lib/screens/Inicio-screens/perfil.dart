// ignore_for_file: deprecated_member_use, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:turismo/screens/Inicio-screens/actualizar-perfil.dart';
import 'package:turismo/widgets/background-images.dart';

Future<void> guardarDatos(nombre, correo) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString('name', nombre);
  await prefs.setString('email', correo);
}

class Perfil extends StatelessWidget {
  Perfil({Key? key}) : super(key: key);

  String? _correo = "Cliente@gmail.com";
  String? _nombre = "Cliente Usuario";
  String? _edad = "21";
  String? _telefono = "1234567";

  Future<void> obtenerDatos() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    _correo = pref.getString('email');
    _nombre = pref.getString('name');
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundImage(image: 'assets/images/16824.jpeg'),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              const SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: CircleAvatar(
                        radius: 80,
                        backgroundColor: Colors.grey[400]!.withOpacity(
                          0.4,
                        ),
                        child: Icon(
                          FontAwesomeIcons.user,
                          color: Colors.white,
                          size: 80,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 7),
                    child: Center(
                      child: Text(
                        "Perfil",
                        style: TextStyle(
                          fontFamily: 'Caveat',
                          fontSize: 60,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 350, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nombre: " + _nombre.toString(),
                      style: TextStyle(
                        fontFamily: 'Caveat',
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Edad: " + _edad.toString(),
                      style: TextStyle(
                        fontFamily: 'Caveat',
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Correo: " + _correo.toString(),
                      style: TextStyle(
                        fontFamily: 'Caveat',
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.zero,
                      child: Text(
                        "Telefono: " + _telefono.toString(),
                        style: TextStyle(
                          fontFamily: 'Caveat',
                          fontSize: 40,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 90),
                    Center(
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 50,
                        minWidth: 200,
                        color: const Color.fromARGB(157, 136, 213, 255),
                        child: const Text(
                          'Actualizar informacion',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Dosis',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        textColor: Colors.white,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const ActualizarPerfil()));
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
