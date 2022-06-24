import 'package:flutter/material.dart';
import 'package:flutter_application_2/entities/barbershop.dart';
import 'package:flutter_application_2/provider/card_provider.dart';

class CardDataProvider {
  Widget recorrerLista(
      BuildContext context, Future<List<BarberShop>?> barbershop) {
    return FutureBuilder(
      future: barbershop,
      initialData: const [],
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return ListView(
            children: [CardProvider.showCard(snapshot.data, context)],
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
