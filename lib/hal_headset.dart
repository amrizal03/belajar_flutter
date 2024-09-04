import 'package:flutter/material.dart';

class Headset extends StatelessWidget {
  const Headset({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          const Padding(padding: EdgeInsets.all(20.0)),
          const Text("HEADSET", style: TextStyle(fontSize: 30.0),),
          const Padding(padding: EdgeInsets.all(20.0),),
          // Icon(Icons.headset, size: 90.0,)
          Image.asset("img/headset.jpg", width: 200.0,)
        ],
      ),
    );
  }
}


