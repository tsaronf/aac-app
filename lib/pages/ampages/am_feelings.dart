import 'package:flutter/material.dart';
import 'package:sampleproject/components/lastcard.dart';

class am_feelings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          "ስሜት",
          style: TextStyle(
            fontFamily: 'Source Sans Pro',
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xFFF3F3F3),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(5),
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        children: <Widget>[
          lastcard(
            image: 'image/afraid.png',
            text: 'መረበሽ',
            audioFile: 'assets/sounds/nervous-am.mp3',
          ),
          lastcard(
            image: 'image/bored.png',
            text: 'ድብርት',
            audioFile: 'assets/sounds/bored-am.mp3',
          ),
          lastcard(
            image: 'image/cold.png',
            text: 'ብርድ',
            audioFile: 'assets/sounds/cold-am.mp3',
          ),
          lastcard(
            image: 'image/fatigue.png',
            text: 'ድካም',
            audioFile: 'assets/sounds/fatigue-am.mp3',
          ),
          lastcard(
            image: 'image/happy.png',
            text: 'ደስታ',
            audioFile: 'assets/sounds/happy-am.mp3',
          ),
          lastcard(
            image: 'image/sad.png',
            text: 'ሓዘን',
            audioFile: 'assets/sounds/sad-am.mp3',
          ),
          lastcard(
            image: 'image/hot.png',
            text: 'ሙቀት',
            audioFile: 'assets/sounds/hot-am.mp3',
          ),
          lastcard(
            image: 'image/hungry.png',
            text: 'መራብ',
            audioFile: 'assets/sounds/hungry-am.mp3',
          ),
          lastcard(
            image: 'image/nervous.png',
            text: 'ፍርሐት',
            audioFile: 'assets/sounds/afraid-am.mp3',
          ),
          lastcard(
            image: 'image/thirsty.png',
            text: 'መጠማት',
            audioFile: 'assets/sounds/thristy-am.mp3',
          ),
        ],
      ),
    );
  }
}
