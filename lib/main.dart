import 'package:flutter/material.dart';
import 'Recipes/recipe1.dart';
import 'Recipes/recipe2.dart';
import 'Recipes/recipe3.dart';
import 'Recipes/recipe4.dart';
import 'Recipes/recipe5.dart';
import 'Recipes/recipe6.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RecipeScreen',
      debugShowCheckedModeBanner: false,
      home: const RecipeMenu(),
    );
  }
}

class RecipeMenu extends StatelessWidget {
  const RecipeMenu({Key? key}) : super(key: key);

  static final List<Map<String, dynamic>> _recipeList = [
    {'index': 1, 'name': 'Recipe 01'},
    {'index': 2, 'name': 'Recipe 02'},
    {'index': 3, 'name': 'Recipe 03'},
    {'index': 4, 'name': 'Recipe 04'},
    {'index': 5, 'name': 'Recipe 05'},
    {'index': 6, 'name': 'Recipe 06'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Maypp - Choose a Recipe', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.indigo,
      ),
      body: ListView.builder(
        itemCount: _recipeList.length,
        itemBuilder: (BuildContext context, int listIndex) {
          final recipeData = _recipeList[listIndex];
          final int recipePageIndex = recipeData['index'];
          final String recipeDisplayName = recipeData['name'];
          
          return ListTile(
            title: Text(recipeDisplayName),
            trailing: const Icon(Icons.arrow_forward_ios, color: Colors.indigo),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => _getRecipePage(recipePageIndex),
                ),
              );
            },
          );
        },
      ),
    );
  }

  Widget _getRecipePage(int index) {
    switch (index) {
      case 1:
        return const Recipe01();
      case 2:
        return const Recipe02();
      case 3:
        return const Recipe03();
      case 4:
        return const Recipe04();
      case 5:
        return const Recipe05();
      case 6:
        return const Recipe06();
      default:
        return Scaffold(
          appBar: AppBar(title: const Text("Erro")),
          body: const Center(child: Text("Receita não encontrada!")),
        );
    }
  }
}
