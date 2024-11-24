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

///////////////
class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
list(title, ){
  return ListTile(
        title: Text("$title"),
              leading: Icon(Icons.add),
              subtitle: Text("Library"),
              onTap: () {},
            );
};
    return Scaffold(
      backgroundColor:  Colors.teal,
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
            list("Two"),
            list("Three"),
            list("Four"),
            list("Five"),
            list("Six"),
            list("Seven"),
            
          ],
        ),
      ),
    );
  }
}
