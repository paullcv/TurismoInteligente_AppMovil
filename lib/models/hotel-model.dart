// ignore_for_file: file_names

class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;
  int stars;

  Hotel({
    required this.imageUrl,
    required this.name,
    required this.address,
    required this.price,
    required this.stars,
  });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/los-tajibos.webp',
    name: 'Los Tajibos',
    address: 'Av. Ejemplo 414, calle prueba 5',
    price: 175,
    stars: 5,
  ),
  Hotel(
    imageUrl: 'assets/images/rey-palace.jpeg',
    name: 'El Rey Palace',
    address: 'Av. Ejemplo 414, calle prueba 5',
    price: 300,
    stars: 5,
  ),
  Hotel(
    imageUrl: 'assets/images/cortez.jpeg',
    name: 'Cortez',
    address: 'Av. Ejemplo 414, calle prueba 5',
    price: 240,
    stars: 5,
  ),
  Hotel(
    imageUrl: 'assets/images/radisson.jpeg',
    name: 'Radisson',
    address: 'Av. Ejemplo 414, calle prueba 5',
    price: 240,
    stars: 5,
  ),
];
