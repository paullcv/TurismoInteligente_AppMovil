// ignore_for_file: file_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:turismo/models/habitacion-model.dart';
import 'package:turismo/models/hotel-model.dart';

class HabitacionPage extends StatefulWidget {
  const HabitacionPage({Key? key, required this.hotel}) : super(key: key);

  final Hotel hotel;

  @override
  State<HabitacionPage> createState() => _HabitacionPageState();
}

class _HabitacionPageState extends State<HabitacionPage> {
  @override
  Widget build(BuildContext context) {
    Text _buildRatingStars(int rating) {
      String stars = '';
      for (int i = 0; i < rating; i++) {
        stars += '⭐ ';
      }
      stars.trim();
      return Text(stars);
    }

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 63, 55, 55),
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: Hero(
                  tag: widget.hotel.imageUrl,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    child: Image(
                      image: AssetImage(widget.hotel.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 40.0),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  iconSize: 30.0,
                  color: Colors.white,
                  onPressed: () => Navigator.pop(context),
                ),
              ),
              Positioned(
                left: 20.0,
                bottom: 20.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Hotel ${widget.hotel.name}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 35.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                      ),
                    ),
                    _buildRatingStars(widget.hotel.stars),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(top: 10.0, bottom: 15.0),
              itemCount: habitaciones.length,
              itemBuilder: (BuildContext context, int index) {
                Habitacion _habitaciones = habitaciones[index];
                return Stack(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.fromLTRB(20.0, 5.0, 30.0, 5.0),
                      height: 170.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(10.0, 20.0, 20.0, 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              children: [
                                Text(
                                  _habitaciones.tipo,
                                  style: const TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                              ],
                            ),
                            const SizedBox(height: 10.0),
                            Row(
                              children: [
                                Container(
                                  width: 200,
                                  child: Text(
                                    _habitaciones.descripcion,
                                    style: const TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 3,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10.0),
                            Row(
                              children: <Widget>[
                                Text(
                                  '${_habitaciones.price} bs.',
                                  style: const TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 220.0,
                      top: 15.0,
                      bottom: 15.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          width: 200,
                          image: AssetImage(
                            _habitaciones.imageUrl,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
