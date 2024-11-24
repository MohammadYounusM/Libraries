import 'package:flutter/material.dart';

class One extends StatelessWidget {
  const One({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(width: 500,
        height: 400,
        color: Colors.green,
        ),
      ),
    );
  }
}