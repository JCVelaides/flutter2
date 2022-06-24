import 'package:flutter/material.dart';
import 'package:flutter_application_2/entities/barbershop.dart';
import 'package:flutter_application_2/utils/get_barber.dart';
import 'package:flutter_application_2/utils/get_haircut.dart';
import 'package:flutter_application_2/utils/rows.dart';

void showDialogFirebase(BuildContext context, BarberShop barbershop) {
  String fullName = '${barbershop.nameBarberShop!} ';
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(fullName),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image(image: NetworkImage(barbershop.image!)),
              const SizedBox(height: 10.0),
              getRow("Address:  ", "${barbershop.address}"),
              getRow("Phone:  ", "${barbershop.phone}"),
              const SizedBox(height: 10.0),
              getCardBarber(barbershop.barber!),
              const SizedBox(height: 10.0),
              getCardHaircut(barbershop.haircut!),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Close'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
