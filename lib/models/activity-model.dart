// ignore_for_file: file_names

class Activity {
  String imageUrl;
  String name;
  String type;
  List<String> startTimes;
  int rating;
  int price;

  Activity({
    required this.imageUrl,
    required this.name,
    required this.type,
    required this.startTimes,
    required this.rating,
    required this.price,
  });
}

List<Activity> actividades = [
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
