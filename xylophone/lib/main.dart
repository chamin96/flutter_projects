import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Xylophone'),
        ),
        body: SafeArea(
          child: Xylophone(),
        ),
      ),
    );
  }
}

class Xylophone extends StatelessWidget {
  void playSound(int noteNum) {
    final player = AudioCache();
    player.play('note$noteNum.wav');
  }

  Expanded buildKey({MaterialColor color, int noteNum}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(noteNum);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        buildKey(color: Colors.red, noteNum: 1),
        buildKey(color: Colors.orange, noteNum: 2),
        buildKey(color: Colors.yellow, noteNum: 3),
        buildKey(color: Colors.green, noteNum: 4),
        buildKey(color: Colors.blue, noteNum: 5),
        buildKey(color: Colors.indigo, noteNum: 6),
        buildKey(color: Colors.purple, noteNum: 7),
      ],
    );
  }
}
