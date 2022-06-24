import 'package:flutter/material.dart';
import 'package:flutter_application_2/entities/barber.dart';
import 'package:flutter_application_2/entities/barbershop.dart';
import 'package:flutter_application_2/entities/haircut.dart';
import 'package:flutter_application_2/utils/showDialogFirebase.dart';

class CustomCard extends StatelessWidget {
  final Barber barber;
  final HairCut haircut;
  final String nameBarberShop;
  final String address;
  final int phone;
  final String image;
  const CustomCard(
      {required this.barber,
      required this.haircut,
      required this.nameBarberShop,
      required this.address,
      required this.phone,
      required this.image,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          showDialogFirebase(
              context,
              BarberShop(
                  barber: barber,
                  haircut: haircut,
                  nameBarberShop: nameBarberShop,
                  address: address,
                  phone: phone,
                  image: image));
        },
        child: SizedBox(
          width: MediaQuery.of(context).size.width - 50,
          height: 100,
          child: Card(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CircleAvatar(backgroundImage: NetworkImage(image)),
              Text(
                barber.nickname!,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              const SizedBox(width: 70),
              const Icon(Icons.keyboard_arrow_right)
            ],
          )),
        ));
  }
}
