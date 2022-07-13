// ignore_for_file: deprecated_member_use, must_be_immutable, prefer_const_constructors, non_constant_identifier_names

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:http/http.dart' as http;
import 'package:turismo/main.dart';
import 'package:turismo/widgets/background-images.dart';

class Perfil extends StatefulWidget {
  const Perfil({Key? key}) : super(key: key);

  @override
  State<Perfil> createState() => _PerfilState();
}

Future<String?> user_profile() async {
  final url = Uri.parse("http://192.168.0.20:8080/api/user-profile");
  SharedPreferences pref = await SharedPreferences.getInstance();
  String token = pref.getString("token").toString();
  final resp = await http.get(url, headers: {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'Authorization': 'Bearer $token',
  });

  if (resp.statusCode == 200) {
    var datos = jsonDecode(resp.body);
    _correo = datos['data']['email'];
    _nombre = datos['data']['name'];
    _carnet = datos['data']['carnetIdentidad'];
    _telefono = datos['data']['telefono'];
    _edad = datos['data']['edad'];
  }
  return null;
}

String? _correo = '';
String? _nombre = '';
String? _edad = '';
String? _carnet = '';
String? _telefono = '';

class _PerfilState extends State<Perfil> {
  @override
  void initState() {
    super.initState();
    user_profile();
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
                  Text(
                    "Perfil",
                    style: TextStyle(
                      fontFamily: 'Caveat',
                      fontSize: 60,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 330, left: 10),
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
                    Text(
                      "Nro carnet: " + _carnet.toString(),
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
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 650, left: 150),
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 50,
                  minWidth: 100,
                  color: const Color.fromARGB(157, 136, 213, 255),
                  child: const Text(
                    'Cerrar Sesion',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Dosis',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  textColor: Colors.white,
                  onPressed: () {
                    _alerta(context);
                  },
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

void _alerta(BuildContext context) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text("Cerrar Sesion"),
        content: Text("Esta seguro de cerrar sesion?"),
        actions: [
          TextButton(
            onPressed: () {
              _cerrarSesion(context);
            },
            child: Text("Si"),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("No"),
          ),
        ],
      );
    },
  );
}

Future<void> _cerrarSesion(context) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String token = prefs.getString("token").toString();
  var url = Uri.parse("http://192.168.0.20:8080/api/logout");
  var resp = await http.get(url, headers: {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'Authorization': 'Bearer ' + token
  });
  if (resp.statusCode == 200) {
    await prefs.clear();
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const MyApp()),
        (route) => false);
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Error al cerrar sesion"),
      ),
    );
  }
}
