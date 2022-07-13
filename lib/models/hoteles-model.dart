// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Hotel {
  String imageUrl;
  String nombre;
  String direccion;
  String descripcion;
  Text categoria;
  String telefono;
  int capacidadMaxHabitacion;
  int precio;

  Hotel({
    required this.imageUrl,
    required this.nombre,
    required this.direccion,
    required this.precio,
    required this.descripcion,
    required this.categoria,
    required this.telefono,
    required this.capacidadMaxHabitacion,
  });
}

// Text _RatingStars(int rating) {
//   String stars = '';
//   for (int i = 0; i < rating; i++) {
//     stars += '⭐ ';
//   }
//   stars.trim();
//   return Text(stars);
// }
