import 'package:flutter/material.dart';
import 'package:turismo/widgets/background-images.dart';
import 'package:turismo/widgets/destination-carousel.dart';
import 'package:turismo/widgets/hotel-carousel.dart';
import 'package:turismo/widgets/restaurant-carousel.dart';

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
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
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(
                      Icons.airplanemode_active,
                      size: 40,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.fastfood_outlined,
                      size: 40,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.directions_walk_rounded,
                      size: 40,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.hotel,
                      size: 40,
                      color: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const DestinationCarousel(),
                const SizedBox(height: 20),
                const HotelCarousel(),
                const SizedBox(height: 20),
                const RestaurantCarousel(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
