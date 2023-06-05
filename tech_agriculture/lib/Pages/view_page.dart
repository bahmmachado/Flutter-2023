import 'package:flutter/material.dart';

import 'analytics_page.dart';
import 'history_page.dart';

class ViewPage extends StatefulWidget {
  const ViewPage({super.key});

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
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
                margin: EdgeInsets.fromLTRB(10, 20, 10, 10),
                child: Image.asset('images/Logo2Nexus201Dark.png'),
              ),
            ],
          )),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          Text(
            'Imagens da Plantação',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'Poppins', fontSize: 20.0, color: Colors.white),
          ),
          Container(margin: EdgeInsets.only(top: 30),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.center,
                      width: 200.0,
                      height: 200.0,
                      child: Image.asset('images/Plantacao1.jpg'),
                    )),
                Expanded(
                    flex: 1,
                    child: Column(children: [
                      Text('Drone 1',
                      textAlign: TextAlign.center,
            style: TextStyle(
              //Localização: 23°45'39.4"S 47°57'27.9"W
                fontFamily: 'Poppins', fontSize: 15.0, color: Colors.white),),
                      Text('ID23453944757279',
                      textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'Poppins', fontSize: 15.0, color: Colors.white),),
                Text('Data: 01/06/2023',
                      textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'Poppins', fontSize: 15.0, color: Colors.white),),
                    Container(
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AnalyticsPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xFFca4a5e),
                            maximumSize: Size(400, 50)),
                        child: Text(
                          'Analisar',
                          style:
                              TextStyle(fontFamily: 'Poppins', fontSize: 15.0),
                        ),
                      ),
                    ),
                    ],),
                    ),
              ],
            ),
          ),
          Container(margin: EdgeInsets.only(top: 30),),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    flex: 1,
                    child:
                    Container(
                      alignment: Alignment.center,
                        width: 200.0,
                        height: 200.0,
                        child: Image.asset('images/Plantacao2.jpg'))),
                Expanded(
                    flex: 1,
                    child: Column(children: [
                      Text('Drone 2',
                      textAlign: TextAlign.center,
            style: TextStyle(
              //Localização: 23°45'28.8"S 47°57'30.6"W
                fontFamily: 'Poppins', fontSize: 15.0, color: Colors.white),),
                      Text('ID23452884757306',
                      textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'Poppins', fontSize: 15.0, color: Colors.white),),
                Text('Data: 01/06/2023',
                      textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'Poppins', fontSize: 15.0, color: Colors.white),),
                    Container(
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AnalyticsPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xFFca4a5e),
                            maximumSize: Size(400, 50)),
                        child: Text(
                          'Analisar',
                          style:
                              TextStyle(fontFamily: 'Poppins', fontSize: 15.0),
                        ),
                      ),
                    ),
                    ],),
                    ),
              ],
            ),
          ),
          Container(margin: EdgeInsets.only(top: 30),),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.center,
                        width: 200.0,
                        height: 200.0,
                        child: Image.asset('images/Plantacao3.jpg'))),
                Expanded(
                    flex: 1,
                    child: Column(children: [
                      Align(alignment: Alignment.centerRight,),
                      Text('Drone 3',
                      textAlign: TextAlign.center,
            style: TextStyle(
              //Localização:23°45'48.2"S 47°57'21.7"W
                fontFamily: 'Poppins', fontSize: 15.0, color: Colors.white),),
                      Text('ID23454824757217',
                      textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'Poppins', fontSize: 15.0, color: Colors.white),),
                Text('Data: 01/06/2023',
                      textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'Poppins', fontSize: 15.0, color: Colors.white),),
                    Container(
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AnalyticsPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xFFca4a5e),
                            maximumSize: Size(400, 50)),
                        child: Text(
                          'Analisar',
                          style:
                              TextStyle(fontFamily: 'Poppins', fontSize: 15.0),
                        ),
                      ),
                    ),
                    ],),
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
