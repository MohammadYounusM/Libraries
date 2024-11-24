import 'package:flutter/material.dart';

list(BuildContext context,title, address) {
  return Card(
     margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
 
  elevation: 4.0, // سایه کارت
    child: ListTile(
      title: Text("$title"),
      leading: Icon(Icons.add),
      subtitle: Text("Library"),
      onTap: () {
        Navigator.pushNamed(context, "/$address");
      },
    ),
  );
}
