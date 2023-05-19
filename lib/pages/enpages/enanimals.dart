import 'package:flutter/material.dart';
import 'package:sampleproject/components/lastcard.dart';

class enanimals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "Animals",
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
            text: 'Cow',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/dog.png',
            text: 'Dog',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/cat.png',
            text: 'Cat',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/mouse.png',
            text: 'Mouse',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/goat.png',
            text: 'Goat',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/hen.png',
            text: 'Hen',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/sheep.png',
            text: 'Sheep',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/donkey.png',
            text: 'Donkey',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/horse.png',
            text: 'Horse',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/robin.png',
            text: 'Bird',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/hyena.png',
            text: 'Hyena',
            // audioFile: 'voice/Black.ogg',
          ),
        ],
      ),
    );
  }
}
