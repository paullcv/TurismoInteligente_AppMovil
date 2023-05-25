// ignore_for_file: file_names, non_constant_identifier_names

class Servicio {
  String id;
  String fecha_inicio;
  String fecha_final;
  String tipo_servicio;
  String cantidad_personas;
  String monto_total;

  Servicio({
    required this.id,
    required this.fecha_inicio,
    required this.fecha_final,
    required this.tipo_servicio,
    required this.cantidad_personas,
    required this.monto_total,
  });
}

final List<Servicio> servicios = [
  Servicio(
    id: '1',
    fecha_inicio: '17-06-2022',
    fecha_final: '17-06-2022',
    tipo_servicio: 'Lugar Turistico',
    cantidad_personas: '5',
    monto_total: '45',
  ),
  Servicio(
    id: '2',
    fecha_inicio: '17-06-2022',
    fecha_final: '20-06-2022',
    tipo_servicio: 'Hotel',
    cantidad_personas: '5',
    monto_total: '350',
  ),
  Servicio(
    id: '3',
    fecha_inicio: '18-06-2022',
    fecha_final: '18-06-2022',
    tipo_servicio: 'Restaurante',
    cantidad_personas: '5',
    monto_total: '90',
  ),
];
