import 'package:flutter/material.dart';
import 'package:tech_agriculture/Pages/view_page.dart';

import 'analytics_page.dart';
import 'history_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(10, 20, 10, 10),
              child:
            Image.asset('images/Logo2Nexus201Dark.png'),
            ),
          ],
        )
      ),
      body: Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 30),
        ),
        Text('Controle e análise da plantação',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 20.0,
          color: Colors.white),
          ),
          Text('Aqui você consegue encontrar as informações necessárias para observar, analisar, entender e ter noção de toda a plantação, com a localização de cada imagem.',
          textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 15.0,
          color: Colors.white),
          ),
          Container(
          margin: EdgeInsets.only(top: 30),
        ),
          Flexible(
            flex: 1,
            child:
            Container(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage('images/Drone.jpg'),
                ),
            )),
          Flexible(
            flex: 1,
            child:
          Container(
            alignment: Alignment.center,
            child: 
            ElevatedButton(onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ViewPage()),
            );
            },
            style: ElevatedButton.styleFrom(primary: Color(0xFFca4a5e), maximumSize: Size(400, 50)),
          child: Text('Imagens da Plantação',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 15.0),
            ),
            ),
          )
          ),
          Flexible(
            flex: 1,
            child:
            Container(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage('images/Data.jpg'),
                ),
            )),
          Flexible(
            flex: 1,
            child:
          Container(
            alignment: Alignment.center,
            child: ElevatedButton(onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AnalyticsPage()),
            );
            },
            style: ElevatedButton.styleFrom(primary: Color(0xFFca4a5e), maximumSize: Size(400, 50)),
          child: Text('Análise da Plantação',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 15.0),
            ),
            ),
          )
          ),
          Flexible(
            flex: 1,
            child:
            Container(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage('images/History.jpg'),
                ),
            )),
          Flexible(
            flex: 1,
            child:
          Container(
            alignment: Alignment.center,
            child: ElevatedButton(onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HistoryPage()),
            );
            },
            style: ElevatedButton.styleFrom(primary: Color(0xFFca4a5e), maximumSize: Size(400, 50)),
          child: Text('Histórico da Plantação',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 15.0),
            ),
            ),
          )
          ),
        ],
      ),
    );
  }
}