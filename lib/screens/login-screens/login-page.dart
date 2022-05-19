// ignore_for_file: file_names, prefer_const_constructors, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:turismo/palette.dart';
import 'package:turismo/screens/Inicio-screens/menu.dart';
import 'package:turismo/screens/login-screens/create-new-account.dart';
import 'package:turismo/screens/login-screens/forgot-password.dart';
import 'package:turismo/widgets/background-images.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _email = "";

    TextEditingController _contra = TextEditingController();

    final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

    return Stack(
      children: [
        const BackgroundImage(
          image: 'assets/images/fondo.jpeg',
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  const SizedBox(
                    height: 180,
                    child: Center(
                      child: Text(
                        'Mis Viajes',
                        style: kHeading,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                        Form(
                          key: _formkey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Ingrese su correo electronico";
                                  }
                                  if (!RegExp(
                                          "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                      .hasMatch(value)) {
                                    return "Ingrese un correo electronico valido";
                                  }
                                  return null;
                                },
                                autocorrect: false,
                                keyboardType: TextInputType.emailAddress,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color.fromARGB(197, 101, 124, 136),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  labelText: "Correo electronico",
                                  labelStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                  ),
                                  prefixIcon: Icon(
                                    Icons.alternate_email_rounded,
                                    color: Colors.white,
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  errorStyle: const TextStyle(
                                    fontSize: 22,
                                  ),
                                ),
                                onChanged: (value) => _email = value,
                              ),
                              SizedBox(height: 8),
                              TextFormField(
                                controller: _contra,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Ingrese una contraseña";
                                  }
                                  return null;
                                },
                                autocorrect: false,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                                obscureText: true,
                                obscuringCharacter: '*',
                                keyboardType: TextInputType.visiblePassword,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color.fromARGB(197, 101, 124, 136),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  labelText: "Contraseña",
                                  labelStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                  ),
                                  prefixIcon: Icon(
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
                              ),
                              SizedBox(height: 3),
                              GestureDetector(
                                  onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) =>
                                              const ForgotPassword())),
                                  child: Text(
                                    'Olvide mi contraseña',
                                    style: kBodyText,
                                  )),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 100,
                            ),
                            FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 50,
                              minWidth: 200,
                              color: Color.fromARGB(157, 122, 189, 251),
                              child: const Text(
                                'Ingresar',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: 'Dosis',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              textColor: Colors.white,
                              onPressed: () {
                                if (_formkey.currentState!.validate()) {
                                  login(_email, _contra.text, context);
                                }
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            GestureDetector(
                              onTap: (() => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) =>
                                          const CreateNewAccount()))),
                              child: Text(
                                'Crear nueva cuenta',
                                style: kBodyText,
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

Future<String?> login(String _correo, String _contra, context) async {
  final url = Uri.http("192.168.0.8:8090", "/api/auth/login");
  final resp =
      await http.get(url, headers: {'email': _correo, 'password': _contra});

  if (resp.statusCode == 200) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => const Menu()));
  }

  return null;
}
