import 'package:flutter/material.dart';
import 'items.dart';

import 'package:flutter_application_3/item_pages/item1.dart';
import 'package:flutter_application_3/item_pages/item2.dart';
import 'package:flutter_application_3/item_pages/item3.dart';
import 'package:flutter_application_3/item_pages/item4.dart';
import 'package:flutter_application_3/item_pages/item5.dart';
import 'package:flutter_application_3/item_pages/item6.dart';
import 'package:flutter_application_3/item_pages/item7.dart';



void main(List<String> args) {
  runApp(home());
}

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
   
     return MaterialApp(
      initialRoute: 
      "/",
      routes: {
        "/home": (context) => home(),
        "/l1": (context) => WeatherPage(),
        "/l2": (context) => MyApp(),
        "/l3": (context) => Three(),
        "/l4": (context) => Four(),
        "/l5": (context) => Five(),
        "/l6": (context) => Six(),
        "/l7": (context) => Seven(),
      },
      home: myapp(),
    );
  }
}


///////////////
class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      // AppBar
      appBar: AppBar(
        title: Text(
          "Library",
          style: TextStyle(
            fontSize: 34,
          ),
        ),
        backgroundColor: Colors.blueAccent,
      ),

      // BODY
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            
            list(context, "HTTP", "l1"),
            Divider(
              color: Colors.grey,
              thickness: 0.5,
            ),

            /// Second
             list(context ,"Two", "l2"),
            Divider(
              color: Colors.grey,
              thickness: 0.5,
            ),

            // Third
             list(context ,"Three", "l3"),
            Divider(
              color: Colors.grey,
              thickness: 0.5,
            ),

            // Four
             list(context ,"Foue", "l4"),
            Divider(
              color: Colors.grey,
              thickness: 0.5,
            ),

            // Fifth
             list(context ,"Five", "l5"),
            Divider(
              color: Colors.grey,
              thickness: 0.5,
            ),

            // Sixth
             list(context ,"Six", "l6"),
            Divider(
              color: Colors.grey,
              thickness: 0.5,
            ),

            // Seven
             list(context ,"Seven", "l7"),
            Divider(
              color: Colors.grey,
              thickness: 0.5,
            ),
          ],
        ),
      ),
    );
  }
}