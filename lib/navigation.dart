import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: const Halsatu(),
    title: "Navigasi",
    routes: <String, WidgetBuilder>{
      '/Halsatu'  : (BuildContext context) => const Halsatu(),
      '/Haldua'  : (BuildContext context) => const Haldua(),
    },
  ));
}

class Halsatu extends StatelessWidget {
  const Halsatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Music"),
      ),
      body: Center(
        child: IconButton(
          icon: const Icon(Icons.headset, size: 50.0,),
          onPressed: (){
            Navigator.pushNamed(context, '/Haldua');
          },
        ),
      ),
    );
  }
}

class Haldua extends StatelessWidget {
  const Haldua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SPEAKER"),
      ),
      body: Center(
        child: IconButton(
          icon: const Icon(Icons.speaker, size: 50.0, color: Colors.red,),
          onPressed: (){
            Navigator.pushNamed(context, '/Halsatu');
          },
        ),
      ),
    );
  }
}