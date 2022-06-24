import 'package:flutter/material.dart';

class ProfileEver extends StatelessWidget {
  const ProfileEver({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: const Text("Heroica BarberShop"),
        ),
        body: cardCustom());
  }
}

Widget cardCustom() {
  return Center(
      child: Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    margin: const EdgeInsets.all(15),
    elevation: 10,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(5),
            child: const Text('Ever Navarro',
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold)),
          ),
          Container(
              width: 400,
              height: 400,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/profile/ever.jpeg')))),
          Row(children: const <Widget>[
            Text('Occupation: ',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
            Text('Developer'),
          ]),
          Row(children: const <Widget>[
            Text('Training: ',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
            Text('Electronic Engineer'),
          ]),
          Row(children: const <Widget>[
            Text('City: ',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
            Text('Cartagena de Indias'),
          ]),
        ],
      ),
    ),
  ));
}
