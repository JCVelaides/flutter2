import 'package:flutter/material.dart';

class ListView4 extends StatefulWidget {
  const ListView4({Key? key}) : super(key: key);

  @override
  State<ListView4> createState() => _ListView4State();
}

class _ListView4State extends State<ListView4> {
  final List<Map<String, String>> _futbol = [
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJg2EXFcoubkkEmNkip4EqjR9t6lYPB5zqyA&usqp=CAU",
      "name": "America de Cali"
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZQSckQnofA6B4_I-8LveI2JvRgZ9A8sVLEg&usqp=CAU",
      "name": "Atletico nacional"
    },
    {
      "image":
          "https://i.pinimg.com/originals/52/23/62/5223621b97f16c84a10fce9582f2ed0e.jpg",
      "name": "Deportivo Cali"
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVskovPBf9n3f4KCWjoqSlMStFsBrDYpKHYg&usqp=CAU",
      "name": "Atletico Junior"
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHbA8TfxsM7KMQXtzDbu03mwMhFygjcelEog&usqp=CAU",
      "name": "Independiente Medellin"
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSojqCPVHJTLsoaLRVYx7JMDHpwxlQholEAHQ&usqp=CAU",
      "name": "Millonarios"
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTX5Y0Qu397II1L2mDxZT6RmNcG3xjrCSwCLg&usqp=CAU",
      "name": "Santa fe"
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTAC3d8eR-DNp8Gs1sC_zTQKVluZ_YMrXwVg&usqp=CAU",
      "name": "Once caldas"
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuongm7PH0IP1g-VBY_uAcrFnp-YnCQ7jf8g&usqp=CAU",
      "name": "Boyaca chico FC"
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShqVScKqTMSowkypiRSzYioWTh8ERft8BhQg&usqp=CAU",
      "name": "Real Cartagena"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Fútbol Profesional Colombiano"),
        ),
        body: ListView.builder(
            itemCount: _futbol.length,
            itemBuilder: (_, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      Image.network(_futbol[index]["image"]!).image,
                ),
                title: Text(_futbol[index]["name"]!),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (_) {
                        return const AlertDialog(
                          content: Text("soy una alerta"),
                        );
                      });
                },
              );
            }));
  }
}
