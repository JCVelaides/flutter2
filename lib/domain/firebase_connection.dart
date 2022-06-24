import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_application_2/entities/barbershop.dart';
import 'package:flutter_application_2/entities/response_firebase.dart';

class FirebaseConnection {
  static final FirebaseDatabase _database = FirebaseDatabase.instance;

  DatabaseReference instanceFirebase() {
    return _database.ref('/barberShops');
  }

  Future<List<BarberShop>?> getBarberShops() async {
    try {
      DatabaseReference _barbershops = instanceFirebase();
      DataSnapshot response = await _barbershops.get();
      final string = json.encode(response.value);
      final data = json.decode(string);
      final barbershops = ResponseFirebase.fromJson(data);
      return barbershops.barbershops;
    } catch (e) {
      rethrow;
    }
  }

  /* Future<BarberShop> getBarberShop(id) async {
    try {
      DatabaseReference _registros = instanceFirebase();
      DataSnapshot response = await _registros.child('/$id').get();
      final string = json.encode(response.value);
      final data = json.decode(string);
      final registers = BarberShop.fromJson(data);
      return registers;
    } catch (e) {
      rethrow;
    }
  }*/
}
