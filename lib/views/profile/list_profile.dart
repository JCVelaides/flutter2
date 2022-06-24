import 'package:flutter/material.dart';
import 'package:flutter_application_2/views/profile/profile_ever.dart';
import 'package:flutter_application_2/views/profile/profile_jair.dart';

class ListProfile extends StatelessWidget {
  const ListProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: const Text("Heroica BarberShop"),
        ),
        body: Center(
            child: SizedBox(
          width: MediaQuery.of(context).size.width - 50,
          child: ListView(
            children: <Widget>[
              const SizedBox(height: 20),
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(175, 229, 226, 226),
                ),
                child: ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: AssetImage('assets/profile/ever.jpeg'),
                    ),
                    title: const Text('Ever'),
                    subtitle: const Text('Navarro'),
                    trailing: const Icon(Icons.keyboard_arrow_right),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProfileEver()));
                    }),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(175, 229, 226, 226),
                ),
                child: ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: AssetImage('assets/profile/jair.jpg'),
                    ),
                    title: const Text('Jair'),
                    subtitle: const Text('Calderon'),
                    trailing: const Icon(Icons.keyboard_arrow_right),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProfileJair()));
                    }),
              ),
            ],
          ),
        )));
  }
}
