import 'package:flutter/material.dart';
import 'package:flutter_application_2/domain/firebase_connection.dart';
import 'package:flutter_application_2/provider/card_data_provider.dart';

class CardView extends StatelessWidget {
  const CardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text("Heroica BarberShop"),
      ),
      body: CardDataProvider()
          .recorrerLista(context, FirebaseConnection().getBarberShops()),
    );
  }
}
