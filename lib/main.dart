import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              _buildKey(color: Colors.red, soundNumber: 1),
              _buildKey(color: Colors.orange, soundNumber: 2),
              _buildKey(color: Colors.yellow, soundNumber: 3),
              _buildKey(color: Colors.green, soundNumber: 4),
              _buildKey(color: Colors.teal, soundNumber: 5),
              _buildKey(color: Colors.blue, soundNumber: 6),
              _buildKey(color: Colors.purple, soundNumber: 7),
            ],
          )
        ),
      ),
    );
  }

  Widget _buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          player.play('note$soundNumber.wav');
        },
        child: null,
        color: color,
      ),
    );
  }
}
