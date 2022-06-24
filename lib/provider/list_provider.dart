import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/showDialogFirebase.dart';

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
                data[index].nameBarberShop!,
              ),
              subtitle: Text(
                data[index].address!,
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
