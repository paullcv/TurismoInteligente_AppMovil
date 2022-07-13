// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:turismo/models/restaurant-model.dart';
import 'package:turismo/widgets/background-images.dart';

class RestaurantPage extends StatefulWidget {
  const RestaurantPage({Key? key, required this.ciudad}) : super(key: key);

  final String ciudad;

  @override
  State<RestaurantPage> createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundImage(image: 'assets/images/16824.jpeg'),
        Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(132, 0, 0, 0),
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
            title: Text(
              widget.ciudad,
              style: const TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            centerTitle: true,
          ),
          backgroundColor: const Color.fromARGB(0, 0, 0, 0),
          body: ListView.builder(
            itemCount: restaurantes.length,
            itemBuilder: (BuildContext contex, int index) {
              Restaurant restaurant = restaurantes[index];
              return GestureDetector(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
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
                        child: Stack(
                          children: <Widget>[
                            Hero(
                              tag: restaurant.imageUrl,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                  height: 180,
                                  width: 300,
                                  image: AssetImage(restaurant.imageUrl),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 10,
                              bottom: 10,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    restaurant.name,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1.2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
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
