// ignore_for_file: file_names, deprecated_member_use

import 'package:flutter/material.dart';

class ActualizarPerfil extends StatefulWidget {
  const ActualizarPerfil({Key? key}) : super(key: key);

  @override
  State<ActualizarPerfil> createState() => _ActualizarPerfilState();
}

class _ActualizarPerfilState extends State<ActualizarPerfil> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: const Color.fromARGB(255, 63, 55, 55),
          body: SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40, right: 370),
                      child: IconButton(
                        iconSize: 30.0,
                        color: Colors.white,
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.arrow_back),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Center(
                        child: Text(
                          "Actualizar Perfil",
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
                  padding: const EdgeInsets.only(top: 300, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        autocorrect: false,
                        style: const TextStyle(
                          color: Colors.white,
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
                      const SizedBox(height: 10),
                      TextFormField(
                        autocorrect: false,
                        style: const TextStyle(
                          color: Colors.white,
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
                      const SizedBox(height: 10),
                      TextFormField(
                        autocorrect: false,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey.withOpacity(0.6),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          labelText: "Correo",
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
                          if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                              .hasMatch(value)) {
                            return "Ingrese un correo electronico valido";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        autocorrect: false,
                        style: const TextStyle(
                          color: Colors.white,
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
                            return "Ingrese su telefono";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 90),
                      Center(
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 50,
                          minWidth: 200,
                          color: const Color.fromARGB(203, 75, 146, 251),
                          child: const Text(
                            'Guardar',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Dosis',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          textColor: Colors.white,
                          onPressed: () {},
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
