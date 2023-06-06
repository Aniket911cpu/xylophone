import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void play(int num) {
    setState(() {
      final player = AudioPlayer();
      player.play(DeviceFileSource('assets/note$num.wav'));
      player.setVolume(0.9);
      //           OR
      //final player = AudioPlayer();
      //player.play(AssetSource('note1.wav'));
    });
  } //Function for Playing Sound

  Expanded ui(Color color, int sound) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          play(sound);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(color),
        ),
        child: Container(),
      ),
    );
  } //Function for UI of Xylophone

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ui(Colors.red, 1),
          ui(Colors.orange, 2),
          ui(Colors.yellow, 3),
          ui(Colors.lightGreen, 4),
          ui(Colors.green, 5),
          ui(Colors.blueAccent, 6),
          ui(Colors.purpleAccent, 7),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
