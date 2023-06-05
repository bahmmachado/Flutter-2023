import 'package:flutter/material.dart';

import 'Pages/home_page.dart';

void main() {
  runApp(const TechAgriculture());
}

class TechAgriculture extends StatelessWidget {
  const TechAgriculture({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF000000),
        scaffoldBackgroundColor: Color(0xFF000000),
        appBarTheme: AppBarTheme().copyWith(
          backgroundColor: Color(0xFF000000),
        ),
      ),
      home: HomePage(),
    );
  }
}