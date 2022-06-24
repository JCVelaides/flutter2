import 'package:flutter_application_2/entities/barbershop.dart';

class ResponseFirebase {
  List<BarberShop>? barbershops;

  ResponseFirebase({this.barbershops});

  factory ResponseFirebase.fromJson(List list) => ResponseFirebase(
      barbershops: list.map((e) => BarberShop.fromJson(e)).toList());
}
