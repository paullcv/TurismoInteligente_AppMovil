// ignore_for_file: file_names

import 'package:turismo/models/activity-model.dart';

class Destination {
  String imageUrl;
  String ciudad;
  String pais;
  String descripcion;
  List<Activity> actividades;

  Destination({
    required this.imageUrl,
    required this.ciudad,
    required this.pais,
    required this.descripcion,
    required this.actividades,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/salar.jpeg',
    name: 'Salar de Uyuni',
    type: 'Tour',
    startTimes: ['6:00 am', '22:00 pm'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/images/casa-moneda.jpeg',
    name: 'La Casa de la Moneda',
    type: 'Tour',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 4,
    price: 45,
  ),
  Activity(
    imageUrl: 'assets/images/catedral-24-sept.jpeg',
    name: 'La Catedral, Plaza 24 de Septiembre',
    type: 'Tour',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 25,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/chuquisaca.jpeg',
    ciudad: 'Chuquisaca',
    pais: 'Bolivia',
    descripcion: 'Visita Chuquisaca para una aventura inolvidable',
    actividades: activities,
  ),
  Destination(
    imageUrl: 'assets/images/santa-cruz-sierra-bolivia.webp',
    ciudad: 'Santa Cruz',
    pais: 'Bolivia',
    descripcion: 'Visita Santa Cruz para una aventura inolvidable.',
    actividades: activities,
  ),
  Destination(
    imageUrl: 'assets/images/la-paz.jpeg',
    ciudad: 'La Paz',
    pais: 'Bolivia',
    descripcion: 'Visita La Paz para una aventura inolvidable.',
    actividades: activities,
  ),
  Destination(
    imageUrl: 'assets/images/cocha.jpeg',
    ciudad: 'Cochabamba',
    pais: 'Bolivia',
    descripcion: 'Visita Cochabamba para una aventura inolvidable.',
    actividades: activities,
  ),
  Destination(
    imageUrl: 'assets/images/tarija.jpeg',
    ciudad: 'Tarija',
    pais: 'Bolivia',
    descripcion: 'Visita Tarija para una aventura inolvidable.',
    actividades: activities,
  ),
];
