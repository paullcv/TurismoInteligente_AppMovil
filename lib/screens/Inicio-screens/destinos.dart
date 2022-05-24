// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:turismo/widgets/background-images.dart';

class Destino extends StatelessWidget {
  const Destino({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        Scaffold(
          body: BackgroundImage(image: 'assets/images/16824.jpeg'),
        ),
        Center(
          child: Text(
            'Lugares Turisticos',
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
