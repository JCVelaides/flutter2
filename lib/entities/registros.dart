import 'package:flutter_application_2/entities/servicio.dart';

import 'carro.dart';

class Registros {
  final Carro? carro;
  final Servicio? servicio;
  final String? apellido;
  final String? licencia;
  final int? celular;
  final String? nombre;
  final String? image;

  Registros(
      {this.carro,
      this.servicio,
      this.apellido,
      this.licencia,
      this.celular,
      this.nombre,
      this.image});

  factory Registros.fromJson(Map<Object?, dynamic> json) {
    return Registros(
        carro: json['Carro'] != null ? Carro.fromJson(json['Carro']) : null,
        servicio: json['Servicio'] != null
            ? Servicio.fromJson(json['Servicio'])
            : null,
        apellido: json['apellido'],
        licencia: json['licencia'],
        celular: json['celular'],
        nombre: json['nombre'],
        image: json['image']);
  }
}
