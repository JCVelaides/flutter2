import 'package:flutter/material.dart';

Row getRow(String title, String value) {
  return Row(
    children: <Widget>[
      Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      Text(value),
    ],
  );
}
