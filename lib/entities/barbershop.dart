import 'package:flutter_application_2/entities/barber.dart';
import 'package:flutter_application_2/entities/haircut.dart';

class BarberShop {
  final Barber? barber;
  final HairCut? haircut;
  final String? nameBarberShop;
  final String? address;
  final int? phone;
  final String? image;

  BarberShop(
      {this.barber,
      this.haircut,
      this.nameBarberShop,
      this.address,
      this.phone,
      this.image});

  factory BarberShop.fromJson(Map<Object?, dynamic> json) {
    return BarberShop(
        barber:
            json['barbers'] != null ? Barber.fromJson(json['barbers']) : null,
        haircut: json['haircuts'] != null
            ? HairCut.fromJson(json['haircuts'])
            : null,
        nameBarberShop: json['nameBarberShop'],
        address: json['address'],
        phone: json['phone'],
        image: json['image']);
  }
}
