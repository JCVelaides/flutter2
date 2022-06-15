import 'package:flutter/material.dart';
import 'package:flutter_application_2/entities/registros.dart';
import 'package:flutter_application_2/provider/list_provider.dart';

class DataProvider {
  Widget recorrerLista(
      BuildContext context, Future<List<Registros>?> registros) {
    return FutureBuilder(
      future: registros,
      initialData: const [],
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return ListView(
            children: [ListProvider.showList(snapshot.data, context)],
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
