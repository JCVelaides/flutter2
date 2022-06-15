import 'package:flutter_application_2/entities/registros.dart';

class ResponseFirebase {
  List<Registros>? registros;

  ResponseFirebase({this.registros});

  /*ResponseFirebase.fromJson(Map<String, dynamic> json) {
    if (json['registros'] != null) {
      registros = <Registros>[];
      json['Registros'].forEach((v) {
        registros!.add(Registros.fromJson(v));
      });
    }
  }*/

  /*ResponseFirebase.fromJson(List json) {
    registros = json.map((e) => Registros.fromJson(e)).toList();
  }*/
  factory ResponseFirebase.fromJson(List list) => ResponseFirebase(
      registros: list.map((e) => Registros.fromJson(e)).toList());
}
