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
            text: 'መሮጥ',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/wet-floor.png',
            text: 'መዉደቅ',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/breaking.png',
            text: 'መስበር',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/sleep.png',
            text: 'መተኛት',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/morning.png',
            text: 'መንቃት',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/dressing.png',
            text: 'መልበስ',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/playtime.png',
            text: 'መጫወት',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/triangle.png',
            text: 'መንቀሳቀስ',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/shower.png',
            text: 'ገላ መታጠብ',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/brushing-teeth.png',
            text: 'ጥርስ መቦረሽ',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/jump.png',
            text: 'መዝለል',
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
          //   text: 'ምላስ',
          //   // audioFile: 'assets/sounds/enGreetings01.mp3',
          // ),
        ],
      ),
    );
  }
}
