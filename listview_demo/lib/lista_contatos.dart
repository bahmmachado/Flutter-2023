import 'package:flutter/material.dart';

class ListaContatos extends StatefulWidget {
  const ListaContatos({Key? key}) : super(key: key);

  @override
  State<ListaContatos> createState() => _ListaContatosState();
  
}

class _ListaContatosState extends State<ListaContatos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contatos Favoritos"),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (contex, index) {
          return Card(
            child: ListTile(
              title: Text("${index+1}"),
              leading: CircleAvatar(radius: 22),
              contentPadding: EdgeInsets.all(15.0),
              subtitle: Text("+55 11 9"),
            ),
          );
        }
      ),
    );
  }
}

