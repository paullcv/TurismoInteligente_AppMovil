// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:turismo/models/destination-model.dart';
import 'package:turismo/screens/Inicio-screens/restaurant-page.dart';
import 'package:turismo/widgets/background-images.dart';

class Restaurantes extends StatefulWidget {
  const Restaurantes({Key? key}) : super(key: key);

  @override
  State<Restaurantes> createState() => _RestaurantesState();
}

class _RestaurantesState extends State<Restaurantes> {
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
            title: const Text(
              'Restaurantes en...',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            centerTitle: true,
          ),
          backgroundColor: const Color.fromARGB(0, 0, 0, 0),
          body: ListView.builder(
            itemCount: destinations.length,
            itemBuilder: (BuildContext contex, int index) {
              Destination destination = destinations[index];
              return GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => RestaurantPage(
                      ciudad: destination.ciudad,
                    ),
                  ),
                ),
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
                              tag: destination.imageUrl,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                  height: 180,
                                  width: 300,
                                  image: AssetImage(destination.imageUrl),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 10,
                              bottom: 10,
                              child: Text(
                                destination.ciudad,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.2,
                                ),
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
