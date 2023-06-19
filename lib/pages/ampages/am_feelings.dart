import 'package:flutter/material.dart';
import 'package:sampleproject/components/lastcard.dart';

class am_feelings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "ስሜት",
          style: TextStyle(
            fontFamily: 'Source Sans Pro',
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Color(0xFFF3F3F3),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(5),
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        children: <Widget>[
          lastcard(
            image: 'image/afraid.png',
            text: 'ጭንቀት',
            audioFile: 'assets/sounds/Afraid-am.mp3',
          ),
          lastcard(
            image: 'image/bored.png',
            text: 'ድብርት',
            audioFile: 'assets/sounds/apple-am.mp3',
          ),
          lastcard(
            image: 'image/cold.png',
            text: 'ብርድ',
            audioFile: 'assets/sounds/apple-am.mp3',
          ),
          lastcard(
            image: 'image/fatigue.png',
            text: 'ድካም',
            audioFile: 'assets/sounds/apple-am.mp3',
          ),
          lastcard(
            image: 'image/happy.png',
            text: 'ደስተኛ',
            audioFile: 'assets/sounds/apple-am.mp3',
          ),
          lastcard(
            image: 'image/hot.png',
            text: 'ሙቀት',
            audioFile: 'assets/sounds/apple-am.mp3',
          ),
          lastcard(
            image: 'image/hungry.png',
            text: 'ረሐብ',
            audioFile: 'assets/sounds/apple-am.mp3',
          ),
          lastcard(
            image: 'image/nervous.png',
            text: 'ፍርሐት',
            audioFile: 'assets/sounds/apple-am.mp3',
          ),
          lastcard(
            image: 'image/thirsty.png',
            text: 'ጥማት',
            audioFile: 'assets/sounds/apple-am.mp3',
          ),
        ],
      ),
    );
  }
}
