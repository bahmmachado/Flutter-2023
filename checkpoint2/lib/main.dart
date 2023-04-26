import 'package:flutter/material.dart';

import 'Contact.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ContactsPage(),
    );
  }
}
class ContactsPage extends StatefulWidget {
  @override
  State<ContactsPage> createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  int contador = 0;
  final contacts = [
    Contact(name: "John Doe", email: 'john_doeoe@gmail.com', favorito: false),
    Contact(name: "Alice O. Austin", email: 'AliceOAustin@rhyta.com', favorito: false),
    Contact(name: "Douglas R. Broadway", email: 'DouglasRBroadway@dayrep.com', favorito: false),
    Contact(name: "Cristiane Madeira", email: 'Cristiane.Madeira@gmail.com', favorito: false),
    Contact(name: "Adriano Machado", email: 'Adriano.Machado@gmail.com', favorito: false)
  ];

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Contatos Favoritos $contador'),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(backgroundImage:
            NetworkImage('https://i.pravatar.cc/150?img=?'),),
            title: Text(contacts[index].name),
            subtitle: Text(contacts[index].email),
            trailing: IconButton(icon: contacts[index].favorito ? Icon(Icons.favorite): Icon(Icons.favorite_border),
            onPressed: () {
              setState(() {
                contacts[index].favorito = !contacts[index].favorito;
                if (contacts[index].favorito) {
                  contador++;
                } else {
                  contador--;
                }
              });
            },
            )
          );
        },
      ),
    );
  }
}