import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turismo/screens/Inicio-screens/menu.dart';
import 'screens/login-screens/login-page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme:
            GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/Login',
      routes: {
        '/Login': (context) => const LoginPage(),
        'inicio': (context) => const Menu(),
      },
    );
  }
}
