import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int i) {
    final players = AudioCache();
    players.play('note$i.wav');
  }

  Expanded buildNote({int soundWav, Color color}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
        onPressed: () {
          playSound(soundWav);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildNote(soundWav: 1, color: Colors.redAccent),
              buildNote(soundWav: 2, color: Colors.pinkAccent),
              buildNote(soundWav: 3, color: Colors.blueAccent),
              buildNote(soundWav: 4, color: Colors.tealAccent),
              buildNote(soundWav: 5, color: Colors.yellowAccent),
              buildNote(soundWav: 6, color: Colors.greenAccent),
              buildNote(soundWav: 7, color: Colors.purpleAccent),
            ],
          ),
        ),
      ),
    );
  }
}
