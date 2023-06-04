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
      player.setVolume(1.0);
    });
  }

  void ui() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                play(1);
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.red),
              ),
              child: Container(),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                play(2);
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.orange),
              ),
              child: Container(),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                play(3);
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.yellow),
              ),
              child: Container(),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                play(4);
              },
              style: const ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll<Color>(Colors.lightGreen),
              ),
              child: Container(),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                play(5);
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
              ),
              child: Container(),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                play(7);
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.blue),
              ),
              child: Container(),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                play(1);
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.purple),
              ),
              child: Container(),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
