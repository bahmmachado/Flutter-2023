import 'package:calculadora_imc/constant.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final Icon iconData;
  final Text text;
  const IconContent({
    super.key,
    required this.iconData,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        iconData,
        SizedBox(
          height: 10,
        ),
        text,
      ],
    );
  }
}