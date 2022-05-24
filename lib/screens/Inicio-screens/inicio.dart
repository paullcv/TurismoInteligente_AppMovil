import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:turismo/widgets/background-images.dart';
import 'package:turismo/widgets/destination-carousel.dart';
import 'package:turismo/widgets/hotel-carousel.dart';

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  int _selectedIndex = 0;
  final List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.personWalking,
    FontAwesomeIcons.burger,
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: _selectedIndex == index
              ? const Color.fromARGB(73, 238, 238, 238)
              : Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Icon(
          _icons[index],
          size: 25,
          color: _selectedIndex == index ? Colors.white : Colors.black,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundImage(
          image: 'assets/images/16824.jpeg',
        ),
        Scaffold(
          backgroundColor: const Color.fromARGB(0, 63, 55, 55),
          body: SafeArea(
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 30),
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 10),
                  child: Text(
                    '¿Qué le gustaría encontrar?',
                    style: TextStyle(
                      fontFamily: 'Caveat',
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: _icons
                      .asMap()
                      .entries
                      .map(
                        (MapEntry map) => _buildIcon(map.key),
                      )
                      .toList(),
                ),
                const SizedBox(height: 20),
                const DestinationCarousel(),
                const SizedBox(height: 20),
                const HotelCarousel(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
