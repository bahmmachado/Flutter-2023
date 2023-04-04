import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
    ),
    );
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int contador = 0;
  String texto = '';

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              '$contador',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              '$texto',
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: increment,
        child: Icon(Icons.add),
        ),
    );
  }

  void increment() {
    setState(() {
      if (contador < 10) {
        contador++;
      } else {
        texto = 'Limite ultrapassado';
      }
    });
  }
}