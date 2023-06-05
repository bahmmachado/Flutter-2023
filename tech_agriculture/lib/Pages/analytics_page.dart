import 'package:flutter/material.dart';

class AnalyticsPage extends StatefulWidget {
  const AnalyticsPage({super.key});

  @override
  State<AnalyticsPage> createState() => _AnalyticsPageState();
}

class _AnalyticsPageState extends State<AnalyticsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 70,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 10, 10),
                child: Image.asset('images/Logo2Nexus201Dark.png'),
              ),
            ],
          )),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(10, 20, 10, 10),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          Text(
            'ID23452884757306',
            style: TextStyle(
                fontFamily: 'Poppins', fontSize: 20.0, color: Colors.white),
          ),
          Container(
            width: 400,
            height: 100,
            child: Image.asset('images/Plantacao1.jpg'),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Cultura:',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15.0,
                            color: Colors.white),
                      ),
                      Text(
                        'Soja',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15.0,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Pragas e Doenças:',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15.0,
                            color: Colors.white),
                      ),
                      Text(
                        'Podridão-radicular',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15.0,
                            color: Colors.white),
                      ),
                      Text(
                        'Oídio',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15.0,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Nutrientes:',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15.0,
                            color: Colors.white),
                      ),
                      Text(
                        'Fósforo: 10',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15.0,
                            color: Colors.white),
                      ),
                      Text(
                        'Potássio: 20',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15.0,
                            color: Colors.white),
                      ),
                      Text(
                        'Cálcio: 3,0',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15.0,
                            color: Colors.white),
                      ),
                      Text(
                        'Enxofre: 2,1',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15.0,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Irrigação:',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15.0,
                            color: Colors.white),
                      ),
                      Text(
                        '6 mm',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15.0,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Text('Recomendação:',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15.0,
                  color: Colors.white
                ),),
                Text(
                    'Será necessário aumentar a irrigação da plantação, chegar em  1 a 2 mm, e utilizar gesso agrícula com 15% de agrícola.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15.0,
                      color: Colors.white
                    ),
                    ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                    primary: Color(0xFFca4a5e), maximumSize: Size(400, 50)),
                child: Text(
                  'Voltar',
                  style: TextStyle(fontFamily: 'Poppins', fontSize: 15.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
