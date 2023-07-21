import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {


  Expanded buildKey(int soundNumber, Color color){
   return Expanded(
      child: MaterialButton(
        onPressed: () {
          final player = AudioPlayer();
          player.play(AssetSource('note$soundNumber.wav'));
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(1,Colors.red),
            buildKey(2,Colors.orange),
            buildKey(3,Colors.yellow),
            buildKey(4,Colors.green),
            buildKey(5,Colors.teal),
            buildKey(6,Colors.blue),
            buildKey(7,Colors.purple),
          ],
        )),
      ),
    );
  }
}
