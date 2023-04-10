//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("images/perfil.jpg"),
                  ),
                  accountName: Text('Naomi'),
                  accountEmail: Text('pefil@gmail.com.br')),
              ListTile(
                leading: Icon(Icons.stay_primary_landscape_outlined),
                title: Text('Primary'),
              ),
              ListTile(
                leading: Icon(Icons.social_distance),
                title: Text('Social'),
              ),
              ListTile(
                leading: Icon(Icons.label),
                title: Text('Promotions'),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text("Checkpoint 1"),
        ),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Naomi e Barbara",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
            ),
            SizedBox(
              height: 20.0,
              width: 700.0,
              child: Divider(
                color: Colors.white,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.facebook,
                  color: Colors.blue,
                ),
                Icon(Icons.phone, color: Colors.green),
                Icon(Icons.email, color: Colors.red),
              ],
            ),
          ],
        )),
        floatingActionButton: const FloatingActionButton(
          backgroundColor: Colors.green,
          tooltip: 'WhatsApp',
          onPressed: null,
          child: Icon(
            Icons.whatsapp,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
