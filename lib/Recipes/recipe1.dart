import 'package:flutter/material.dart';

void main() {
  MaterialApp app = MaterialApp(
    theme: ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.red,
      fontFamily: 'Ubuntu',
    ),
    home: Scaffold(
      appBar: AppBar(title: Text("Maypp"), backgroundColor: Colors.red),
      body: ListView(
        children: [
          ExpansionTile(
            title: Text('Título 1'),
            subtitle: Text('Opcional'),
            leading: Icon(Icons.add),
            children: [
              ListTile(title: Text('Texto 1')),
              ListTile(title: Text('Texto 2')),
            ],
          ),
          ExpansionTile(
            title: Text('Título 2'),
            subtitle: Text('Opcional'),
            leading: Icon(Icons.add_circle),
            children: [
              ListTile(title: Text('Texto 3')),
              ListTile(title: Text('Texto 4')),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: null, child: Text("Anterior")),
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
          ElevatedButton(onPressed: () {}, child: Text("Próximo")),
        ],
      ),
    ),
  );
  runApp(app);
}