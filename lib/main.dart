import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatefulWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  void playSound(int songnum)
  {
    final player = AudioPlayer();
    player.play(AssetSource('note$songnum.wav'));
  }

  Expanded buildkey({required Color coloname,required int songNumber})
  {
    return Expanded(
      child: OutlinedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(coloname),

        ),
        onPressed: () {
          playSound(songNumber);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(coloname: Colors.pinkAccent, songNumber: 1),
              buildkey(coloname: Colors.white, songNumber: 2),
              buildkey(coloname: Colors.blue, songNumber: 3),
              buildkey(coloname: Colors.grey, songNumber: 4),
              buildkey(coloname: Colors.yellow, songNumber: 5),
              buildkey(coloname: Colors.pink, songNumber: 6),
              buildkey(coloname: Colors.cyan, songNumber: 7),
              OutlinedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('KabhiTumheShershaah.wav'));
                },
                child: Text('KabhiTumheShershaah.wav'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


