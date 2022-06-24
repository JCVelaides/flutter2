import 'package:flutter/material.dart';
import 'package:flutter_application_2/entities/haircut.dart';
import 'package:flutter_application_2/utils/rows.dart';

Column getCardHaircut(HairCut haircut) {
  return Column(
    children: <Widget>[
      const Text("Haircut",
          style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold)),
      getRow("Haircut 1:  ", "${haircut.haircut1}"),
      getRow("Haircut 2:  ", "${haircut.haircut2}"),
      getRow("Haircut 3:  ", "${haircut.haircut3}"),
    ],
  );
}
