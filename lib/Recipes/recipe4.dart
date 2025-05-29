import 'package:flutter/material.dart';

var dataObjects = [{
  "Text" : "Exemple 1",
  "Sub" : "Sub Example 1",
  "Secret" : "Secret Exemple 1"
},
{
  "Text" : "Exemple 2",
  "Sub" : "Sub Example 2",
  "Secret" : "Secret Exemple 2"
},
{
  "Text" : "Exemple 3",
  "Sub" : "Sub Example 3",
  "Secret" : "Secret Exemple 3"
},
{
    "Text" : "Exemple 4",
    "Sub" : "Sub Example 4",
    "Secret" : "Secret Exemple 4"
  },
  {
    "Text" : "Exemple 5",
    "Sub" : "Sub Example 5",
    "Secret" : "Secret Exemple 5"
  },
  {
    "Text" : "Exemple 6",
    "Sub" : "Sub Example 6",
    "Secret" : "Secret Exemple 6"
  },
  {
    "Text" : "Exemple 7",
    "Sub" : "Sub Example 7",
    "Secret" : "Secret Exemple 7"
  },
  {
    "Text" : "Exemple 8",
    "Sub" : "Sub Example 8",
    "Secret" : "Secret Exemple 8"
  },
  {
    "Text" : "Exemple 9",
    "Sub" : "Sub Example 9",
    "Secret" : "Secret Exemple 9"
  },
  {
    "Text" : "Exemple 10",
    "Sub" : "Sub Example 10",
    "Secret" : "Secret Exemple 10"
  },
  {
    "Text" : "Exemple 10",
    "Sub" : "Sub Example 10",
    "Secret" : "Secret Exemple 10"
  },
  {
    "Text" : "Exemple 11",
    "Sub" : "Sub Example 11",
    "Secret" : "Secret Exemple 11"
  },
  {
    "Text" : "Exemple 12",
    "Sub" : "Sub Example 12",
    "Secret" : "Secret Exemple 12"
  },
  {
    "Text" : "Exemple 13",
    "Sub" : "Sub Example 13",
    "Secret" : "Secret Exemple 13"
  },
  {
    "Text" : "Exemple 14",
    "Sub" : "Sub Example 14",
    "Secret" : "Secret Exemple 14"
  },
  {
    "Text" : "Exemple 15",
    "Sub" : "Sub Example 15",
    "Secret" : "Secret Exemple 15"
  },
  {
    "Text" : "Exemple 16",
    "Sub" : "Sub Example 16",
    "Secret" : "Secret Exemple 16"
  },
  {
    "Text" : "Exemple 17",
    "Sub" : "Sub Example 17",
    "Secret" : "Secret Exemple 17"
  },
  {
    "Text" : "Exemple 18",
    "Sub" : "Sub Example 18",
    "Secret" : "Secret Exemple 18"
  },
  {
    "Text" : "Exemple 19",
    "Sub" : "Sub Example 19",
    "Secret" : "Secret Exemple 19"
  },
  {
    "Text" : "Exemple 20",
    "Sub" : "Sub Example 20",
    "Secret" : "Secret Exemple 20"
  }
];

class Recipe04 extends StatelessWidget {
  const Recipe04({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Ubuntu'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: MayppBar(),
        body: MayppBody(
          objects: dataObjects
        ),
        bottomNavigationBar: MayppBottonNavBar(objIcons: [Icons.light_mode, Icons.favorite, Icons.dark_mode],),
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
              child: Icon(Icons.circle, color: Colors.purple)
            )
          ),
          PopupMenuItem(
            child: Container(
              alignment: Alignment.center,
              child: Icon(Icons.circle, color: Colors.blue)
            )
          ),
          PopupMenuItem(
            child: Container(
              alignment: Alignment.center,
              child: Icon(Icons.circle, color: Colors.yellow)
            )
          )
        ]
      )
    ]
    );
}

class MayppBody extends StatelessWidget {
  final List objects;
  MayppBody({this.objects = const []});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:
          objects
              .map(
                (obj) => ExpansionTile(
                  title: Text(obj["Text"]),
                  subtitle: Text(obj["Sub"]),
                  leading: Icon(Icons.add),
                  children: [ListTile(title: Text(obj["Secret"]))],
                ),
              )
              .toList(),
    );
  }
}

class MayppBottonNavBar extends StatelessWidget {
  final List<IconData> objIcons;
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