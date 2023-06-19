import 'package:flutter/material.dart';
import 'package:sampleproject/components/lastcard.dart';

class am_family extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "ቤተሰብ",
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
            text: 'እናት',
            audioFile: 'assets/sounds/Mother-am.mp3',
          ),
          lastcard(
            image: 'image/father.png',
            text: 'አባት',
            audioFile: 'assets/sounds/Father-am.mp3',
          ),
          lastcard(
            image: 'image/sister.png',
            text: 'እህት',
            audioFile: 'assets/sounds/Sister-am.mp3',
          ),
          lastcard(
            image: 'image/brother.png',
            text: 'ወንድም',
            audioFile: 'assets/sounds/Brother-am.mp3',
          ),
          lastcard(
            image: 'image/aunt.png',
            text: 'አክስት',
            audioFile: 'assets/sounds/Aunt-am.mp3',
          ),
          lastcard(
            image: 'image/uncle.png',
            text: 'አጎት',
            audioFile: 'assets/sounds/Uncle-am.mp3',
          ),
          lastcard(
            image: 'image/grandmother.png',
            text: 'አያት',
            audioFile: 'assets/sounds/Grandfather-am.mp3',
          ),
          lastcard(
            image: 'image/grandfather.png',
            text: 'አያት',
            audioFile: 'assets/sounds/Grandfather-am.mp3',
          ),
        ],
      ),
    );
  }
}
