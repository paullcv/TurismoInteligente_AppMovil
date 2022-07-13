// ignore_for_file: file_names

class Restaurant {
  String imageUrl;
  String name;
  String address;
  int price;
  int stars;

  Restaurant({
    required this.imageUrl,
    required this.name,
    required this.address,
    required this.price,
    required this.stars,
  });
}

final List<Restaurant> restaurantes = [
  Restaurant(
    imageUrl: 'assets/images/kfc.jpeg',
    name: 'KFC',
    address: 'Av. Ejemplo 414, calle prueba 5',
    price: 35,
    stars: 5,
  ),
  Restaurant(
    imageUrl: 'assets/images/pizza.jpeg',
    name: 'Pizza Rio',
    address: 'Av. Ejemplo 414, calle prueba 5',
    price: 30,
    stars: 5,
  ),
  Restaurant(
    imageUrl: 'assets/images/mostaza.jpeg',
    name: 'Mostaza',
    address: 'Av. Ejemplo 414, calle prueba 5',
    price: 24,
    stars: 5,
  ),
  Restaurant(
    imageUrl: 'assets/images/CasaDelCamba.jpeg',
    name: 'La Casa del Camba',
    address: 'Av. Ejemplo 414, calle prueba 5',
    price: 24,
    stars: 5,
  ),
];
