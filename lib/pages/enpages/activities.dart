import 'package:flutter/material.dart';
import 'package:sampleproject/components/lastcard.dart';

class activities extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "ድርጊት",
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
            image: 'image/run.png',
            text: 'Running',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/wet-floor.png',
            text: 'Falling',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/breaking.png',
            text: 'breaking',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/sleep.png',
            text: 'Sleeping',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/morning.png',
            text: 'Waking up',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/dressing.png',
            text: 'Dressing',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/playtime.png',
            text: 'Playing',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/triangle.png',
            text: 'Sport',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/shower.png',
            text: 'Taking bath',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/brushing-teeth.png',
            text: 'Brushing teeth',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/jump.png',
            text: 'Jumping',
            // audioFile: 'voice/Black.ogg',
          ),
          // lastcard(
          //   image: 'image/open-mouth.png',
          //   text: 'አፍ',
          //   // audioFile: 'assets/sounds/enGreetings01.mp3',
          // ),
          // lastcard(
          //   image: 'image/stomach.png',
          //   text: 'ሆድ',
          //   // audioFile: 'assets/sounds/enGreetings01.mp3',
          // ),
          // lastcard(
          //   image: 'image/neck.png',
          //   text: 'አንገት',
          //   // audioFile: 'assets/sounds/enGreetings01.mp3',
          // ),
          // lastcard(
          //   image: 'image/tongue.png',
          //   text: '',
          //   // audioFile: 'assets/sounds/enGreetings01.mp3',
          // ),
        ],
      ),
    );
  }
}
