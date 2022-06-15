import 'package:flutter/material.dart';
import 'package:flutter_application_2/domain/firebase_connection.dart';
import 'package:flutter_application_2/provider/data_provider.dart';

class ListView3 extends StatefulWidget {
  const ListView3({Key? key}) : super(key: key);

  @override
  State<ListView3> createState() => _ListView3State();
}

class _ListView3State extends State<ListView3> {
  @override
  Widget build(BuildContext context) {
    FirebaseConnection fireBaseConnection = FirebaseConnection();
    return Scaffold(
        appBar: AppBar(
          title: const Text("Fútbol Profesional Colombiano"),
        ),
        body: DataProvider()
            .recorrerLista(context, fireBaseConnection.getRegisters()));
  }
}
