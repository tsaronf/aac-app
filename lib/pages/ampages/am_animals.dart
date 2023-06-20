import 'package:flutter/material.dart';
import 'package:sampleproject/components/lastcard.dart';

class am_animals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "እንስሳ",
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
            image: 'image/cow.png',
            text: 'ላም',
            audioFile: 'assets/sounds/Cow-am.mp3',

            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/dog.png',
            text: 'ዉሻ',
            audioFile: 'assets/sounds/Dog-am.mp3',

            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/cat.png',
            text: 'ድመት',
            audioFile: 'assets/sounds/Cat-am.mp3',

            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/mouse.png',
            text: 'አይጥ',
            audioFile: 'assets/sounds/Cat-am.mp3',

            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/goat.png',
            text: 'ፍየል',
            audioFile: 'assets/sounds/Goat-am.mp3',
          ),
          lastcard(
            image: 'image/hen.png',
            text: 'ዶሮ',
            audioFile: 'assets/sounds/Hen-am.mp3',
          ),
          lastcard(
            image: 'image/sheep.png',
            text: 'በግ',
            audioFile: 'assets/sounds/Sheep-am.mp3',
          ),
          lastcard(
            image: 'image/donkey.png',
            text: 'አህያ',
            audioFile: 'assets/sounds/Donkey-am.mp3',
          ),
          lastcard(
            image: 'image/horse.png',
            text: 'ፈረስ',
            audioFile: 'assets/sounds/Horse-am.mp3',
          ),
          lastcard(
            image: 'image/robin.png',
            text: 'ወፍ',
            audioFile: 'assets/sounds/Bird-am.mp3',
          ),
          lastcard(
            image: 'image/hyena.png',
            text: 'ጅብ',
            audioFile: 'assets/sounds/Hyena-am.mp3',
          ),
          lastcard(
            image: 'image/butterfly.png',
            text: 'ቢራቢሮ',
            audioFile: 'assets/sounds/Butterfly-am.mp3',
          ),
          lastcard(
            image: 'image/lion.png',
            text: 'አንበሳ',
            audioFile: 'assets/sounds/Lion-am.mp3',
          ),
          lastcard(
            image: 'image/ox.png',
            text: 'በሬ',
            audioFile: 'assets/sounds/Ox-am.mp3',
          ),
          lastcard(
            image: 'image/elephant.png',
            text: 'ዝሆን',
            audioFile: 'assets/sounds/Elephant-am.mp3',
          ),
          lastcard(
            image: 'image/giraffe.png',
            text: 'ቀጭኔ',
            audioFile: 'assets/sounds/Girrafe-am.mp3',
          ),
          lastcard(
            image: 'image/tiger.png',
            text: 'ነብር',
            audioFile: 'assets/sounds/Tiger-am.mp3',
          ),
        ],
      ),
    );
  }
}
