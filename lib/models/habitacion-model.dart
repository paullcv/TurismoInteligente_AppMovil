// ignore_for_file: file_names

class Habitacion {
  String imageUrl;
  String tipo;
  String descripcion;
  int price;

  Habitacion({
    required this.imageUrl,
    required this.tipo,
    required this.descripcion,
    required this.price,
  });
}

List<Habitacion> habitaciones = [
  Habitacion(
    imageUrl: 'assets/images/simple.jpeg',
    tipo: 'Simple',
    price: 40,
    descripcion: 'Habitacion con 1 cama para 1 persona',
  ),
  Habitacion(
    imageUrl: 'assets/images/doble.jpeg',
    tipo: 'Doble',
    price: 80,
    descripcion: 'Habitacion con 2 camas para 1 persona',
  ),
  Habitacion(
    imageUrl: 'assets/images/familiar.jpeg',
    tipo: 'Familiar',
    price: 150,
    descripcion: 'Habitacion con varias camas',
  ),
];
