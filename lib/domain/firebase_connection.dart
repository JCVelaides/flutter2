import 'dart:convert';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_application_2/entities/registros.dart';
import 'package:flutter_application_2/entities/response_firebase.dart';

class FirebaseConnection {
  static final FirebaseDatabase _database = FirebaseDatabase.instance;

  DatabaseReference instanceFirebase() {
    return _database.ref('/Registros');
  }

/*
  void getllRegistros() {
    DatabaseReference _registros = instanceFirebase();
    _registros.onValue.listen((event) {
      final registros = event.snapshot.value;
      Map<String, dynamic> registrosJson = json.decode(registros.toString());
      ResponseFirebase reg = ResponseFirebase.fromJson(registrosJson);
      print(reg);
    });
  }*/

  Future<List<Registros>?> getRegisters() async {
    try {
      DatabaseReference _registros = instanceFirebase();
      DataSnapshot response = await _registros.get();
      final string = json.encode(response.value);
      final data = json.decode(string);
      final registers = ResponseFirebase.fromJson(data);
      return registers.registros;
    } catch (e) {
      rethrow;
    }
  }

  /* void getRegisters() async {
    DatabaseReference _database = instanceFirebase();
    DataSnapshot response = await _database.get();
    final strin = json.encode(response.value);
    final data = json.decode(strin);
    /* ResponseFirebase registros = ResponseFirebase.fromJson(data);
    print(registros.registros); */
    print(data);
  } */

  Future<Registros> getRegister(id) async {
    try {
      DatabaseReference _registros = instanceFirebase();
      DataSnapshot response = await _registros.child('/$id').get();
      final string = json.encode(response.value);
      final data = json.decode(string);
      final registers = Registros.fromJson(data);
      return registers;
    } catch (e) {
      rethrow;
    }
  }
}
