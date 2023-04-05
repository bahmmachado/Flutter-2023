import 'package:calculadora_imc/constant.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  const CustomCard({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: kInactiveCardColour,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: child,
    );
  }
}