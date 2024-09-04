import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "Card & Parsing",
    home: Pageone(),
  ));
}

class Pageone extends StatelessWidget {
  const Pageone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card & Parsing"),
      ),
      body: Container(
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            CardSaya(
              icon: Icons.home,
              teks: "Home",
              warnaIcon: Colors.brown,
            ),
            CardSaya(
              icon: Icons.favorite,
              teks: "Favorite",
              warnaIcon: Colors.pink,
            ),
            CardSaya(
              icon: Icons.place,
              teks: "Place",
              warnaIcon: Colors.blue,
            ),
            CardSaya(
              icon: Icons.settings,
              teks: "Settings",
              warnaIcon: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}

class CardSaya extends StatelessWidget {
  const CardSaya(
      {super.key,
      required this.icon,
      required this.teks,
      required this.warnaIcon});

  final IconData icon;
  final String teks;
  final Color warnaIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      child: Card(
        child: Column(
          children: <Widget>[
            Icon(
              icon,
              size: 50.0,
              color: warnaIcon,
            ),
            Text(
              teks,
              style: const TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
