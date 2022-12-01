import 'package:flutter/material.dart';

Widget listItem(
  BuildContext context,
  String title,
  String description,
  IconData icon,
  Widget page
){
  return ListTile(
    title: Text(title),
    subtitle: Text(description),
    leading: Icon(icon),
    iconColor: Colors.blue,
    onTap: (){
      Navigator.push(context,
        MaterialPageRoute(builder: (context) => page)
      );
    },
  );
}
