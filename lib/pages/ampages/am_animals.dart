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
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/dog.png',
            text: 'ዉሻ',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/cat.png',
            text: 'ድመት',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/mouse.png',
            text: 'አይጥ',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/goat.png',
            text: 'ፍየል',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/hen.png',
            text: 'ዶሮ',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/sheep.png',
            text: 'በግ',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/donkey.png',
            text: 'አህያ',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/horse.png',
            text: 'ፈረስ',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/robin.png',
            text: 'ወፍ',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/hyena.png',
            text: 'ጅብ',
            // audioFile: 'voice/Black.ogg',
          ),
           lastcard(
            image: 'image/butterfly.png',
            text: 'ቢራቢሮ',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/lion.png',
            text: 'አንበሳ',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/ox.png',
            text: 'በሬ',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/elephant.png',
            text: 'ዝሆን',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/giraffe.png',
            text: 'ቀጭኔ',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/tiger.png',
            text: 'ነብር',
            // audioFile: 'voice/Black.ogg',
          ),
        ],
      ),
    );
  }
}
