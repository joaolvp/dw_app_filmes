import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Meus favoritos",
        style: Theme.of(context).textTheme.headlineSmall,
      )),
      body: Text('Favorites Page'),
    );
  }
}