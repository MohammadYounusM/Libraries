import 'package:flutter/material.dart';
import 'items.dart';

void main(List<String> args) {
  runApp(home());
}

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      backgroundColor:  Colors.lightGreenAccent,
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
            list("One"),
            Divider(
              color: Colors.grey,
              thickness: 0.5,
            ),
            list("Two"),
            Divider(
              color: Colors.grey,
              thickness: 0.5,
            ),
            list("Three"),
            Divider(
              color: Colors.grey,
              thickness: 0.5,
            ),
            list("Four"),
            Divider(
              color: Colors.grey,
              thickness: 0.5,
            ),
            list("Five"),
            Divider(
              color: Colors.grey,
              thickness: 0.5,
            ),
            list("Six"),
            Divider(
              color: Colors.grey,
              thickness: 0.5,
            ),
            list("Seven"),
            
          ],
        ),
      ),
    );
  }
}
