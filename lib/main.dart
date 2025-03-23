import 'package:flutter/material.dart';

void main() {
  MaterialApp app = MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.red),
    home: Scaffold(
      appBar: AppBar(
        title: Text("Maypp"),
        backgroundColor: Colors.red,),
      body: Center(
        child: Column(
          children: [
            Text("Texto 1",
              style: TextStyle(
                fontWeight: FontWeight.bold),
              ),
            Text("Texto 2"),
            Text("Texto 3")
          ]
        )
      ),
      bottomNavigationBar: Text("Próxima Receita"),
    )
  );
  runApp(app);
}