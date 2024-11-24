import 'package:flutter/material.dart';

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

class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appba
      AppBar(
        title: Text(
          "Library",
          style: TextStyle(
            fontSize: 34,
          ),
        ),
        backgroundColor: Colors.blueAccent,
      ),




      
    );
  }
}
