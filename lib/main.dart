import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // int count = 0;
  // Color brown=Colors.brown;
  // Color black = Colors.black;
  // Color temp=Colors.white;
  List<Color> colours = [
    Colors.white,
    Colors.teal,
    Colors.black,
    Colors.pinkAccent,
    Colors.red,
    Colors.purple
  ];
  int appBar = 0;
  int scaffold = 0;
  Random random = new Random();
  List sounds = [
    'SEU4_Kick_31.wav',
    'SEU4_Ride_08.wav',
    'SEU4_Snare_26.wav',
    'SEU4_Tom_07.wav'
  ];
  int soundPosition = 0;
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: colours[appBar],
          centerTitle: true,
          // title: Text("$count"),
          title: IconButton(
            icon: Icon(
              Icons.refresh,
              color: Colors.blueAccent,
            ),
            onPressed: () {
              soundPosition = random.nextInt(4);
            },
          ),
        ),
        backgroundColor: colours[scaffold],
        body: MaterialButton(
          child: Center(
            child: Image.asset(
              'images/dash.png',
            ),
          ),
          onPressed: () {
            setState(() {
              String kick = "";
              // count++;
              player.play(AssetSource(sounds[soundPosition]));
              appBar = random.nextInt(6);
              scaffold = random.nextInt(6);
            });
          },
        ),
      ),
    );
  }
}

// Container(
// height: 100.0,
// width: 100.0,
// color: Colors.red,
// child: Image.asset(
// 'images/dash.png',
// ),
// ),
//
// Container(
// height: 100.0,
// width: 100.0,
// color: Colors.teal,
// child: Image.asset(
// 'images/dash.png',
// ),
// ),
// Container(
// height: 100.0,
// width: 100.0,
// color: Colors.brown,
// child: Image.asset(
// 'images/dash.png',
// ),
// ),
// Container(
// height: 100.0,
// width: 100.0,
// color: Colors.red,
// child: Image.asset(
// 'images/dash.png',
// ),
// ),
// Container(
// height: 100.0,
// width: 100.0,
// color: Colors.yellow,
// child: Image.asset(
// 'images/dash.png',
// ),
// ),
