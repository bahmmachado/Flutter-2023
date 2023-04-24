import 'package:flutter/material.dart';

class ListViewBuilderExemplo extends StatefulWidget {
  const ListViewBuilderExemplo({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderExemplo> createState() => _ListViewBuilderExemplo();
}

class _ListViewBuilderExemplo extends State<ListViewBuilderExemplo> {
  final List<String> items = List.generate(50, (index) => "Item $index");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Builder"),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (contex, index) {
          return ListTile(title: Text('item'));
        }
      ),
    );
  }
}