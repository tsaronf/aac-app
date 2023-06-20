import 'package:flutter/material.dart';
import 'package:sampleproject/components/animationCard.dart';

class animation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "Illustration",
          style: TextStyle(
            fontFamily: 'Source Sans Pro',
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Color(0xFFF3F3F3),
      body: GridView.count(
        crossAxisCount: 1,
        padding: EdgeInsets.all(5),
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        children: <Widget>[
          AnimationCard(
            image: 'image/run.gif',
            text: 'መሮጥ',
          ),
          AnimationCard(
            image: 'image/come.gif',
            text: 'መዉደቅ',
            // audioFile: 'assets/sounds/enGreetings01.mp3',
          ),
          AnimationCard(
            image: 'image/Brushing teeth.gif',
            text: 'መስበር',
            // audioFile: 'assets/sounds/enGreetings01.mp3',
          ),
          // lastcard(
          //   image: 'image/sleep.png',
          //   text: 'መተኛት',
          //   // audioFile: 'assets/sounds/enGreetings01.mp3',
          // ),
          // lastcard(
          //   image: 'image/morning.png',
          //   text: 'መንቃት',
          //   // audioFile: 'assets/sounds/enGreetings01.mp3',
          // ),
          // lastcard(
          //   image: 'image/dressing.png',
          //   text: 'መልበስ',
          //   // audioFile: 'assets/sounds/enGreetings01.mp3',
          // ),
          // lastcard(
          //   image: 'image/playtime.png',
          //   text: 'መጫወት',
          //   // audioFile: 'assets/sounds/enGreetings01.mp3',
          // ),
          // lastcard(
          //   image: 'image/triangle.png',
          //   text: 'መንቀሳቀስ',
          //   // audioFile: 'assets/sounds/enGreetings01.mp3',
          // ),
          // lastcard(
          //   image: 'image/shower.png',
          //   text: 'ገላ መታጠብ',
          //   // audioFile: 'assets/sounds/enGreetings01.mp3',
          // ),
          // lastcard(
          //   image: 'image/brushing-teeth.png',
          //   text: 'ጥርስ መቦረሽ',
          //   // audioFile: 'assets/sounds/enGreetings01.mp3',
          // ),
          // lastcard(
          //   image: 'image/jump.png',
          //   text: 'መዝለል',
          //   // audioFile: 'assets/sounds/enGreetings01.mp3',
          // ),
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
