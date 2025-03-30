import 'package:flutter/material.dart';

class Maypp extends StatelessWidget {
  Maypp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark,  fontFamily: 'Ubuntu'),
      home: Scaffold(
        appBar: MayppBar(),
        body: MayppBody(),
        bottomNavigationBar: MayppBottonNavBar(),
      ),
    );
  }
}

class MayppBar extends AppBar {
  MayppBar() : super(title: Text("Maypp"));
}

class MayppBody extends StatelessWidget {
  MayppBody();

  @override
  Widget build(BuildContext context) {
    return ListView(
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
    );
  }
}

class MayppBottonNavBar extends StatelessWidget {
  MayppBottonNavBar();

  void buttonTouched(int index) {
    print("Button Touched");
  }

  @override
  Widget build(BuildContext context) {
    List<IconData> iconlist = [Icons.dark_mode, Icons.favorite, Icons.search, Icons.light_mode];
    return BottomNavigationBar(
      onTap: buttonTouched,
      items:
          iconlist
              .map(
                (icon) => BottomNavigationBarItem(icon: Icon(icon, color: Colors.white), label: ''),
              )
              .toList(),
    );
  }
}

void main() {
  Maypp app = Maypp();
  runApp(app);
}
