import 'package:calculadora_imc/pages/calculadora_page.dart';
import 'package:flutter/material.dart';

import 'constant.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: true,
    home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Amogus",
      theme: ThemeData.dark().copyWith(
        primaryColor: kBackgroundColor,
        scaffoldBackgroundColor: kBackgroundColor,
        appBarTheme: AppBarTheme().copyWith(
          backgroundColor: kBackgroundColor,
        ),
      ),
      home: CalculadoraPage(),
    );
  }
}