import 'package:flutter/material.dart';

class ListView1 extends StatelessWidget {
  const ListView1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ListView 1"),
        ),
        body: ListView(
          children: const [
            Text("Hola 1"),
            Text("Hola 2"),
            Text("Hola 3"),
            ListTile(
              leading: Icon(Icons.cloud_circle),
              title: Text("Hola 4"),
            ),
            ListTile(
              leading: Icon(Icons.cloud_circle),
              title: Text("Hola 5"),
            ),
            ListTile(
              leading: Icon(Icons.cloud_circle),
              title: Text("Hola 6"),
            ),
            ListTile(
              leading: Icon(Icons.cloud_circle),
              title: Text("Hola 7"),
            ),
          ],
        ));
  }
}
