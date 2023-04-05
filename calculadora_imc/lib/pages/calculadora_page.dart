import 'package:calculadora_imc/components/custom_card.dart';
import 'package:calculadora_imc/constant.dart';
import 'package:flutter/material.dart';

import '../components/icon_content.dart';

class CalculadoraPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora IMC'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomCard(
                    child: IconContent(
                      iconData: Icon(Icons.male, size: 80.0),
                      text: Text("Masculino", style: kLabelTextStyle,),
                      ),
                  )),
                  Expanded(
                    child: CustomCard(
                      child: IconContent(
                        iconData: Icon(Icons.female, size: 80.0),
                        text: Text("Feminino", style: kLabelTextStyle,),
                      )
                      )),
              ],
            )),
          Expanded(
            child: CustomCard(
              child: Column(
                children: [
                  Text(
                    'Altura',
                    style: kLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '1.83',
                          style: kNumberTextStyle,
                        ),
                        Text('cm'),
                      ],
                    ),
                    Slider(
                      onChanged: (double value) {

                    },
                    value: 0,
                    )
                ],
              )
              )),
          Expanded(
            child: CustomCard(
              child: Placeholder()
              )),
        ],
      ),
    );
  }
}

