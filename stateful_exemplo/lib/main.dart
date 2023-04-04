import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ),);
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double tamanho = 300;
  double red = 0;
  double green = 0;
  double blue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
        actions: [
          IconButton(onPressed: () {
            if(tamanho < 500) {
              setState(() {
                tamanho += 50;
              });
            }
          },
          icon: Icon(Icons.add),
          ),

          IconButton(onPressed: () {
            setState(() {
              tamanho = 50;
            });

          },
          icon: const Text('S')
          ),

          IconButton(onPressed: () {
            setState(() {
              tamanho = 300;
            });

          },
          icon: const Text('M')
          ),

          IconButton(onPressed: () {
            setState(() {
              tamanho = 500;
            });

          },
          icon: const Text('L')
          ),
          
          IconButton(onPressed: () {
            if (tamanho > 0) {
              setState(() {
                tamanho -= 50;
              });
            }
          },
          icon: Icon(Icons.remove),
          ),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Icon(Icons.alarm,
            size: tamanho,
            color: Color.fromRGBO(red.toInt(), green.toInt(), blue.toInt(), 1),),
          ),
          Slider(
            activeColor: Colors.red,
            min: 0,
            max: 255,
            value: red,
            onChanged: (double value) {
              setState(() {
                red = value;
              });
          },
        ),
        Slider(
            activeColor: Colors.green,
            min: 0,
            max: 255,
            value: green,
            onChanged: (double value) {
              setState(() {
                green = value;
              });
          },
        ),
        Slider(
            activeColor: Colors.blue,
            min: 0,
            max: 255,
            value: blue,
            onChanged: (double value) {
              setState(() {
                blue = value;
              });
          },
        )
       ],
      ),
    );
  }
}