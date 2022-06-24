import 'package:flutter/material.dart';
import 'package:flutter_application_2/views/custom_card/custom_card.dart';

class CardProvider {
  static Widget showCard(List<dynamic> data, BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          return CustomCard(
              barber: data[index].barber,
              haircut: data[index].haircut,
              nameBarberShop: data[index].nameBarberShop,
              address: data[index].address,
              phone: data[index].phone,
              image: data[index].image);
        });
  }
}
