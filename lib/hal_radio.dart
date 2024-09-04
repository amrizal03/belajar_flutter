import 'package:flutter/material.dart';

class Radio extends StatelessWidget {
  const Radio({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          const Padding(padding: EdgeInsets.all(20.0)),
          const Text("RADIO", style: TextStyle(fontSize: 30.0),),
          const Padding(padding: EdgeInsets.all(20.0),),
          // Icon(Icons.radio, size: 90.0,)
          Image(image: NetworkImage("https://img.freepik.com/free-photo/musical-button-object-stereo-volume_1172-501.jpg?t=st=1723539186~exp=1723542786~hmac=7a9d0e0fd4a3be2c797571b928577f4cbc8181dac1a1ec043031ae6aa4b31a7a&w=900",),width: 200.0,)
        ],
      ),
    );
  }
}