// ignore_for_file: file_names, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:turismo/screens/Inicio-screens/habitaciones-page.dart';
import 'package:turismo/widgets/background-images.dart';

import '../../models/hotel-model.dart';

class HotelPage extends StatefulWidget {
  const HotelPage({Key? key, required this.ciudad}) : super(key: key);

  final String ciudad;

  @override
  State<HotelPage> createState() => _HotelPageState();
}

class _HotelPageState extends State<HotelPage> {
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
            itemCount: hotels.length,
            itemBuilder: (BuildContext contex, int index) {
              Hotel hotel = hotels[index];
              return GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => HabitacionPage(
                      hotel: hotel,
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
                              tag: hotel.imageUrl,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                  height: 180,
                                  width: 300,
                                  image: AssetImage(hotel.imageUrl),
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
                                    hotel.name,
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
