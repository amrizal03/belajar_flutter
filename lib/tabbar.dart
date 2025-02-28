import 'package:flutter/material.dart';

import './hal_komputer.dart' as komputer;
import './hal_radio.dart' as radio;
import './hal_headset.dart' as headset;
import './hal_smartphone.dart' as hp;

void main() {
  runApp(const MaterialApp(
    title: "Tab Bar",
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

  late TabController controller;

  @override
  void initState() {
    controller = TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Daftar Elektronik"),
        bottom: TabBar(
          controller: controller,
          tabs: const <Widget>[
            Tab(icon: Icon(Icons.computer),),
            Tab(icon: Icon(Icons.headset),),
            Tab(icon: Icon(Icons.radio),),
            Tab(icon: Icon(Icons.smartphone),),
          ]
        ),
      ),

      body: TabBarView(
        controller: controller,
        children: const <Widget>[
          komputer.Komputer(),
          radio.Radio(),
          headset.Headset(),
          hp.Smartphone(),
        ],
      ),
    );
  }
}
