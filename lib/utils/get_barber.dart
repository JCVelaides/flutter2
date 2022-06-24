import 'package:flutter/material.dart';
import 'package:flutter_application_2/entities/barber.dart';
import 'package:flutter_application_2/utils/rows.dart';

Column getCardBarber(Barber barber) {
  return Column(
    children: <Widget>[
      const Text("Barber",
          style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold)),
      getRow("Name:  ", "${barber.name}"),
      getRow("Lastname:  ", "${barber.lastname}"),
      getRow("Nickname:  ", "${barber.nickname}"),
      getRow("Years of experience:  ", "${barber.yearExperience}"),
    ],
  );
}
