// ignore_for_file: file_names, deprecated_member_use
// import 'dart:convert';

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:turismo/palette.dart';
import 'package:turismo/screens/Inicio-screens/menu.dart';
import 'package:turismo/widgets/background-images.dart';

class CreateNewAccount extends StatelessWidget {
  const CreateNewAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _nombre = TextEditingController();
    TextEditingController _correo = TextEditingController();
    TextEditingController _telefono = TextEditingController();
    TextEditingController _carnet = TextEditingController();
    TextEditingController _edad = TextEditingController();
    TextEditingController _contra = TextEditingController();
    TextEditingController _confcontra = TextEditingController();

    final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        const BackgroundImage(image: 'assets/images/mapa.jpeg'),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: size.height * 0.07),
                      child: Center(
                        child: CircleAvatar(
                          radius: size.width * 0.14,
                          backgroundColor: Colors.grey[400]!.withOpacity(0.4),
                          child: Icon(
                            FontAwesomeIcons.user,
                            color: Colors.white,
                            size: size.width * 0.15,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.06),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Form(
                        key: _formkey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextFormField(
                              controller: _nombre,
                              autocorrect: false,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                              ),
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey.withOpacity(0.6),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                labelText: "Nombre completo",
                                labelStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                                prefixIcon: const Icon(
                                  Icons.person,
                                  color: Colors.white,
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                errorStyle: const TextStyle(
                                  fontSize: 22,
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Ingrese su nombre";
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: size.height * 0.01),
                            TextFormField(
                              controller: _correo,
                              autocorrect: false,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                              ),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey.withOpacity(0.6),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                labelText: "Correo electronico",
                                labelStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                                prefixIcon: const Icon(
                                  Icons.mail,
                                  color: Colors.white,
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                errorStyle: const TextStyle(
                                  fontSize: 22,
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Ingrese su correo";
                                }
                                if (!RegExp(
                                        "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                    .hasMatch(value)) {
                                  return "Ingrese un correo electronico valido";
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: size.height * 0.03),
                            TextFormField(
                              controller: _contra,
                              autocorrect: false,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                              ),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey.withOpacity(0.6),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                labelText: "Contraseña",
                                labelStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                                prefixIcon: const Icon(
                                  Icons.password,
                                  color: Colors.white,
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                errorStyle: const TextStyle(
                                  fontSize: 22,
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Ingrese una contraseña";
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: size.height * 0.01),
                            TextFormField(
                              controller: _confcontra,
                              autocorrect: false,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                              ),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey.withOpacity(0.6),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                labelText: "Confirmar contraseña",
                                labelStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                                prefixIcon: const Icon(
                                  Icons.lock,
                                  color: Colors.white,
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                errorStyle: const TextStyle(
                                  fontSize: 22,
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Ingrese una contraseña";
                                }
                                if (_contra.text != _confcontra.text) {
                                  return "Las contraseñas no coinciden";
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: size.height * 0.1),
                            TextFormField(
                              controller: _carnet,
                              autocorrect: false,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                              ),
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey.withOpacity(0.6),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                labelText: "Carnet identidad",
                                labelStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                                prefixIcon: const Icon(
                                  Icons.info_rounded,
                                  color: Colors.white,
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                errorStyle: const TextStyle(
                                  fontSize: 22,
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Ingrese un numero de carnet";
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: size.height * 0.01),
                            TextFormField(
                              controller: _telefono,
                              autocorrect: false,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                              ),
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey.withOpacity(0.6),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                labelText: "Telefono",
                                labelStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                                prefixIcon: const Icon(
                                  Icons.phone,
                                  color: Colors.white,
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                errorStyle: const TextStyle(
                                  fontSize: 22,
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Ingrese su numero de telefono";
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: size.height * 0.01),
                            TextFormField(
                              controller: _edad,
                              autocorrect: false,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                              ),
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey.withOpacity(0.6),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                labelText: "Edad",
                                labelStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                                prefixIcon: const Icon(
                                  Icons.calendar_month,
                                  color: Colors.white,
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                errorStyle: const TextStyle(
                                  fontSize: 22,
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Ingrese su edad";
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: size.height * 0.05),
                            Center(
                              child: FlatButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                height: 50,
                                minWidth: 200,
                                color: const Color.fromARGB(157, 122, 189, 251),
                                child: const Text(
                                  'Registrarse',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: 'Dosis',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                textColor: Colors.white,
                                onPressed: () {
                                  if (_formkey.currentState!.validate()) {
                                    register(
                                        _nombre.text,
                                        _correo.text,
                                        _contra.text,
                                        _carnet.text,
                                        _telefono.text,
                                        _edad.text,
                                        context);
                                  }
                                },
                              ),
                            ),
                            SizedBox(height: size.height * 0.02),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Ya tiene una cuenta?',
                                  style: kBodyText,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, '/Login');
                                  },
                                  child: Text(
                                    'Ingresar',
                                    style: kBodyText.copyWith(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

Future<String?> register(String _nombre, String _correo, String _contra,
    String _carnet, String _telefono, String _edad, context) async {
  final url = Uri.parse("http://127.0.0.1:8000/api/auth/register");
  final resp = await http.post(url, body: {
    'name': _nombre,
    'email': _correo,
    'password': _contra,
    'carnetIdentidad': _carnet,
    'telefono': _telefono,
    'edad': _edad,
  });
  if (resp.body != '') {
    // ScaffoldMessenger.of(context).showSnackBar(
    //   const SnackBar(
    //     content: Text("Registrado correctamente"),
    //   ),
    // );
    var datos = jsonDecode(resp.body);
    _guardarDatos(
        datos['data']['name'],
        datos['data']['email'],
        datos['data']['carnetIdentidad'],
        datos['data']['telefono'],
        datos['data']['edad'],
        datos['token']);
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const Menu()),
        (route) => false);
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Error al registrarse"),
      ),
    );
  }
  return null;
}

Future<void> _guardarDatos(
    nombre, correo, carnet, telefono, edad, token) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString('name', nombre);
  await prefs.setString('email', correo);
  await prefs.setString('carnet', carnet);
  await prefs.setString('telefono', telefono);
  await prefs.setString('edad', edad);
  await prefs.setString('token', token);
}
