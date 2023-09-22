import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const xylophone());
}

class xylophone extends StatelessWidget {
  const xylophone({super.key});

  void soundplay(int num) {
    final player = AudioPlayer();
    player.play(AssetSource('note$num.wav'));
  }

  Expanded GenerateKey(Color color, int soundnum) => Expanded(
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(color),
          ),
          onPressed: () {
            soundplay(soundnum);
          },
          child: Text(''),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(90, 180, 194, 233),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              GenerateKey(Colors.black, 1),
              GenerateKey(Colors.redAccent, 2),
              GenerateKey(Colors.blue, 3),
              GenerateKey(Colors.purple, 4),
              GenerateKey(Colors.green, 5),
              GenerateKey(Colors.orange, 6),
              GenerateKey(Colors.cyan, 7),
            ],
          ),
        )),
      ),
    );
  }
}
