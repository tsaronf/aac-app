import 'package:flutter/material.dart';
import 'package:sampleproject/components/lastcard.dart';

class feelings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "Feelings",
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
            text: 'Afraid',
            audioFile: 'assets/sounds/Afraid-am.mp3',
          ),
          lastcard(
            image: 'image/bored.png',
            text: 'Bored',
            audioFile: 'assets/sounds/apple-am.mp3',
          ),
          lastcard(
            image: 'image/cold.png',
            text: 'Cold',
            audioFile: 'assets/sounds/apple-am.mp3',
          ),
          lastcard(
            image: 'image/fatigue.png',
            text: 'Fatigue',
            audioFile: 'assets/sounds/apple-am.mp3',
          ),
          lastcard(
            image: 'image/happy.png',
            text: 'Happy',
            audioFile: 'assets/sounds/apple-am.mp3',
          ),
          lastcard(
            image: 'image/hot.png',
            text: 'Hot',
            audioFile: 'assets/sounds/apple-am.mp3',
          ),
          lastcard(
            image: 'image/hungry.png',
            text: 'Hungry',
            audioFile: 'assets/sounds/apple-am.mp3',
          ),
          lastcard(
            image: 'image/nervous.png',
            text: 'Nervous',
            audioFile: 'assets/sounds/apple-am.mp3',
          ),
          lastcard(
            image: 'image/thirsty.png',
            text: 'Thirsty',
            audioFile: 'assets/sounds/apple-am.mp3',
          ),
        ],
      ),
    );
  }
}
