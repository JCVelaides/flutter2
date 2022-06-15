import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class CallFirebase extends StatelessWidget {
  const CallFirebase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: const Text('Hello World'),
          ),
        ),
      ),
    );
  }

  void callDatabase() {
    //FirebaseDatabase database = FirebaseDatabase.instance;
    //Se trae toda la base de datos
    DatabaseReference starCountRef =
        FirebaseDatabase.instance.ref('/Registros');
    starCountRef.onValue.listen((event) {
      final data = event.snapshot.value;
      print(data.toString());
    });

    //Se trae ur archivo unico
    /*
      final reg = FirebaseDatabase.instance.ref();
      final obj = reg.child('Registros/0').get();
      print(obj.value);
     */
  }
}
