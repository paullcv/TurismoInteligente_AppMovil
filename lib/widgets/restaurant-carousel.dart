// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:turismo/models/restaurant-model.dart';
import 'package:turismo/screens/Inicio-screens/restaurantes-page.dart';

class RestaurantCarousel extends StatefulWidget {
  const RestaurantCarousel({Key? key}) : super(key: key);

  @override
  State<RestaurantCarousel> createState() => _RestaurantCarouselState();
}

class _RestaurantCarouselState extends State<RestaurantCarousel> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text(
                'Restaurantes de calidad',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const Restaurantes())),
                child: const Text(
                  'Ver todos',
                  style: TextStyle(
                    color: Color.fromARGB(255, 116, 211, 239),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 300,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: restaurantes.length,
            itemBuilder: (BuildContext context, int index) {
              Restaurant restaurant = restaurantes[index];
              return GestureDetector(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.all(10),
                  width: 240,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Positioned(
                        bottom: 15,
                        child: Container(
                          height: 120,
                          width: 225,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  restaurant.name,
                                  style: const TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1.2,
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  restaurant.address,
                                  style: const TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  '${restaurant.price} Bs./ plato',
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0.0, 2.0),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                            height: 180,
                            width: 210,
                            image: AssetImage(restaurant.imageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
