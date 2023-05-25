// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:turismo/models/activity-model.dart';
import 'package:turismo/models/hotel-model.dart';
import 'package:turismo/models/restaurant-model.dart';
import 'package:turismo/models/servicio-model.dart';
import 'package:turismo/widgets/background-images.dart';

class MisPaquetes extends StatelessWidget {
  const MisPaquetes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Scaffold(
          body: BackgroundImage(image: 'assets/images/16824.jpeg'),
        ),
        Center(
          child: ListView.builder(
            padding: const EdgeInsets.only(top: 10.0, bottom: 15.0),
            itemCount: servicios.length,
            itemBuilder: (BuildContext context, int index) {
              Servicio _servicios = servicios[index];
              Hotel _hoteles = hotels[index];
              Activity _lugar = actividades[index];
              Restaurant _restaurant = restaurantes[index];
              return Stack(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.fromLTRB(20.0, 5.0, 30.0, 5.0),
                    height: 170.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(132, 255, 255, 255),
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
                                _servicios.tipo_servicio,
                                style: const TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                            ],
                          ),
                          const SizedBox(height: 10.0),
                          Column(
                            children: [
                              SizedBox(
                                width: 200,
                                child: Text(
                                  'Inicio: ${_servicios.fecha_inicio}',
                                  style: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 200,
                                child: Text(
                                  'Final: ${_servicios.fecha_final}',
                                  style: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10.0),
                          Column(
                            children: <Widget>[
                              Text(
                                'Cantidad de personas : ${_servicios.cantidad_personas}',
                                style: const TextStyle(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'Monto total: ${_servicios.monto_total} bs.',
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
                  // Positioned(
                  //   left: 220.0,
                  //   top: 15.0,
                  //   bottom: 15.0,
                  //   child: ClipRRect(
                  //     borderRadius: BorderRadius.circular(20.0),
                  //     child: Image(
                  //       width: 200,
                  //       image: AssetImage(
                  //         _habitaciones.imageUrl,
                  //       ),
                  //       fit: BoxFit.cover,
                  //     ),
                  //   ),
                  // ),
                ],
              );
            },
          ),
        )
      ],
    );
  }
}

// Text returnServicio(hotel, rest, lugar){
//   if()
// }