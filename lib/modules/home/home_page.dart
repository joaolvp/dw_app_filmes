import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'Filmes'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: 'Favoritos'),
            BottomNavigationBarItem(icon: Icon(Icons.logout_outlined), label: 'Sair'),

            ]),
    );
  }
}
