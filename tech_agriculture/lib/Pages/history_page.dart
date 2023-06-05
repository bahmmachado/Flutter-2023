import 'package:flutter/material.dart';
import 'package:tech_agriculture/Pages/view_page.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  
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
              child:
            Image.asset('images/Logo2Nexus201Dark.png'),
            ),
          ],
        )
      ),
      body: Column(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(10, 20, 10, 10),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        Text('Histórico da plantação',
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 20.0,
          color: Colors.white),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Informe o ID',
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                  ),
                  const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Informe a numeração do drone',
                      prefixIcon: Icon(Icons.location_on_outlined),
                    ),
                  ),
                  ),
                  const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Informe a data',
                      prefixIcon: Icon(Icons.today),
                    ),
                  ),
                  ),
            Container(
              alignment: Alignment.center,
            child: ElevatedButton(onPressed: () {
              Navigator.push(context,
               MaterialPageRoute(builder: (context) => const ViewPage()),
              );
            },
            style: ElevatedButton.styleFrom(primary: Color(0xFFca4a5e)),
          child: Text('Buscar',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 15.0),
            ),
            ),
            ),
              ],
            ), 
            ),
          Flexible(
            flex: 1,
            child:
          Container(
            alignment: Alignment.center,
            child: ElevatedButton(onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(primary: Color(0xFFca4a5e)),
          child: Text('Voltar',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 15.0),
            ),
            ),
          ),
          ),
        ],
      ),
    );
  }
}