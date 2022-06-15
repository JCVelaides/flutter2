import 'package:flutter/material.dart';
import 'package:flutter_application_2/entities/carro.dart';
import 'package:flutter_application_2/entities/registros.dart';
import 'package:flutter_application_2/entities/servicio.dart';

class ListProvider {
  static Widget showList(List<dynamic> data, BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            ListTile(
              title: Text(
                data[index].nombre!,
              ),
              subtitle: Text(
                data[index].apellido!,
              ),
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(data[index].image!)),
              onTap: () {
                showDialogFirebase(context, data[index]);
              },
              trailing: const Icon(Icons.keyboard_arrow_right),
            )
          ],
        );
      },
    );
  }
}

void showDialogFirebase(BuildContext context, Registros registro) {
  String fullName = '${registro.nombre!} ${registro.apellido!}';
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(fullName),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image(image: NetworkImage(registro.image!)),
            const SizedBox(height: 10.0),
            _getRow("Celular:  ", "${registro.celular}"),
            _getRow("Licencia:  ", "${registro.licencia}"),
            const SizedBox(height: 10.0),
            _getCardCarro(registro.carro!),
            const SizedBox(height: 10.0),
            _getCardServicio(registro.servicio!),
          ],
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Cerrar'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

Row _getRow(String title, String value) {
  return Row(
    children: <Widget>[
      Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      Text(value),
    ],
  );
}

Column _getCardCarro(Carro carro) {
  return Column(
    children: <Widget>[
      const Text("Carro",
          style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold)),
      _getRow("Modelo:  ", "${carro.modelo}"),
      _getRow("Color:  ", "${carro.color}"),
      _getRow("Placa:  ", "${carro.placa}"),
      _getRow("Marca:  ", "${carro.marca}"),
    ],
  );
}

Column _getCardServicio(Servicio service) {
  return Column(
    children: <Widget>[
      const Text("Servicio",
          style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold)),
      _getRow("Lavado:  ", "${service.lavado}"),
      _getRow("Polish:  ", "${service.polish}"),
      _getRow("Tapiceria:  ", "${service.tapiceria}"),
    ],
  );
}
