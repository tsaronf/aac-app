import 'package:flutter/material.dart';
import 'package:sampleproject/components/lastcard.dart';

class family extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "Family",
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
            image: 'image/mother.png',
            text: 'Mother',
            audioFile: 'assets/sounds/mother.mp3',
          ),
          lastcard(
            image: 'image/father.png',
            text: 'Father',
            audioFile: 'assets/sounds/father.mp3',
          ),
          lastcard(
            image: 'image/sister.png',
            text: 'Sister',
            audioFile: 'assets/sounds/sister.mp3',
          ),
          lastcard(
            image: 'image/brother.png',
            text: 'Brother',
            audioFile: 'assets/sounds/brother.mp3',
          ),
          lastcard(
            image: 'image/aunt.png',
            text: 'Aunt',
            audioFile: 'assets/sounds/aunt.mp3',
          ),
          lastcard(
            image: 'image/uncle.png',
            text: 'Uncle',
            audioFile: 'assets/sounds/uncle.mp3',
          ),
          lastcard(
            image: 'image/grandmother.png',
            text: 'Grand Mother',
            audioFile: 'assets/sounds/grand mother.mp3',
          ),
          lastcard(
            image: 'image/grandfather.png',
            text: 'Grand Father',
            audioFile: 'assets/sounds/grand father.mp3',
          ),
        ],
      ),
    );
  }
}
