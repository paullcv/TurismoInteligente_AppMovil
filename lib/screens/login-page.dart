// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:turismo/palette.dart';
import 'package:turismo/widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundImage(
          image: 'assets/images/fondo1.jpeg',
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
                    height: 70,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const TextInput(
                              icon: FontAwesomeIcons.solidEnvelope,
                              hint: 'Correo electronico',
                              inputType: TextInputType.emailAddress,
                              inputAction: TextInputAction.next,
                            ),
                            const PasswordInput(
                              icon: FontAwesomeIcons.lock,
                              hint: 'Contraseña',
                              inputAction: TextInputAction.done,
                            ),
                            GestureDetector(
                                onTap: () => Navigator.pushNamed(
                                    context, 'ForgotPassword'),
                                child: const Text(
                                  'Olvide mi contraseña',
                                  style: kBodyText,
                                )),
                          ],
                        ),
                        Column(
                          children: [
                            const SizedBox(
                              height: 100,
                            ),
                            const RoundedButton(
                              buttonText: 'Ingresar',
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            GestureDetector(
                              onTap: (() => Navigator.pushNamed(
                                  context, 'CreateNewAccount')),
                              child: Container(
                                decoration: const BoxDecoration(
                                    border: Border(
                                  bottom:
                                      BorderSide(color: Colors.white, width: 1),
                                )),
                                child: const Text(
                                  'Crear una nueva cuenta',
                                  style: kBodyText,
                                ),
                              ),
                            ),
                            const SizedBox(
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
