import 'package:flutter/material.dart';
import 'package:flutter_application_3/item_pages/item1.dart';
import 'package:flutter_application_3/item_pages/item2.dart';
import 'package:flutter_application_3/item_pages/item3.dart';
import 'package:flutter_application_3/item_pages/item4.dart';
import 'package:flutter_application_3/item_pages/item5.dart';
import 'package:flutter_application_3/item_pages/item6.dart';
import 'package:flutter_application_3/item_pages/item7.dart';
import 'package:flutter_application_3/main.dart';

class addresses extends StatelessWidget {
  const addresses({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 
      "/",
      routes: {
        "/": (context) => home(),
        "l1": (context) => One(),
        "l2": (context) => Two(),
        "l3": (context) => Three(),
        "l4": (context) => Four(),
        "l5": (context) => Five(),
        "l6": (context) => Six(),
        "l7": (context) => Seven(),
      },
      
    );
  }
}