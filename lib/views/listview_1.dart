import 'package:flutter/material.dart';

class ListView1 extends StatelessWidget {
  const ListView1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: const Text("Heroica BarberShop"),
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://thumbs.dreamstime.com/b/fondo-de-la-barber%C3%ADa-modelo-incons%C3%BAtil-con-las-tijeras-peluquer%C3%ADa-brocha-afeitar-maquinilla-peine-cara-del-inconformista-y-polo-121495264.jpg'),
              fit: BoxFit.fitHeight,
            ),
          ),
          child: const Center(
            child: Text(''),
          ),
        ));
  }
}
