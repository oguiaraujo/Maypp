import 'package:flutter/material.dart';

class Maypp extends StatelessWidget {
  Maypp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Ubuntu'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: MayppBar(),
        body: MayppBody(
          objects: ["Texto testando 1", "Texto testando 2", "Texto testando 3"]
        ),
        bottomNavigationBar: MayppBottonNavBar(objIcons: [Icons.light_mode, Icons.dark_mode],),
      ),
    );
  }
}

class MayppBar extends AppBar {
  MayppBar() : super(
    title: Text("Maypp"),
    actions: [
      PopupMenuButton(
        icon: Icon(Icons.color_lens),
        color: Colors.black,
        itemBuilder: (BuildContext context) => <PopupMenuEntry> [
          PopupMenuItem(
            child: Container(
              alignment: Alignment.center,
              child: Icon(Icons.circle, color: Colors.white)
            )
          ),
          PopupMenuItem(
            child: Container(
              alignment: Alignment.center,
              child: Icon(Icons.circle, color: Colors.yellow)
            )
          ),
          PopupMenuItem(
            child: Container(
              alignment: Alignment.center,
              child: Icon(Icons.circle, color: Colors.blue)
            )
          )
        ]
      )
    ]
    );
}

class MayppBody extends StatelessWidget {
  List<String> objects;
  MayppBody({this.objects = const []});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:
          objects
              .map(
                (obj) => ExpansionTile(
                  title: Text(obj),
                  subtitle: Text('Sub'),
                  leading: Icon(Icons.add),
                  children: [ListTile(title: Text('secret text'))],
                ),
              )
              .toList(),
    );
  }
}

class MayppBottonNavBar extends StatelessWidget {
  List<IconData> objIcons;
  MayppBottonNavBar({this.objIcons = const <IconData>[]});

  void buttonTouched(int index) {
    print("Button Touched");
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: buttonTouched,
      items:
          objIcons.map(
                (icon) => BottomNavigationBarItem(
                  icon: Icon(icon, color: Colors.white),
                  label: '',
                ),
              )
              .toList(),
    );
  }
}

void main() {
  Maypp app = Maypp();
  runApp(app);
}
