import 'package:flutter/material.dart';
import 'package:sampleproject/components/lastcard.dart';

class animals extends StatelessWidget {
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
            audioFile: 'assets/sounds/cow.mp3',

            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/dog.png',
            text: 'Dog',
            audioFile: 'assets/sounds/dog.mp3',

            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/cat.png',
            text: 'Cat',
            audioFile: 'assets/sounds/cat.mp3',

            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/mouse.png',
            text: 'Mouse',
            audioFile: 'assets/sounds/mouse.mp3',

            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/goat.png',
            text: 'Goat',
            audioFile: 'assets/sounds/goat.mp3',
          ),
          lastcard(
            image: 'image/hen.png',
            text: 'Hen',
            audioFile: 'assets/sounds/hen.mp3',
          ),
          lastcard(
            image: 'image/sheep.png',
            text: 'Sheep',
            audioFile: 'assets/sounds/sheep.mp3',
          ),
          lastcard(
            image: 'image/donkey.png',
            text: 'Donkey',
            audioFile: 'assets/sounds/donkey.mp3',
          ),
          lastcard(
            image: 'image/horse.png',
            text: 'Horse',
            audioFile: 'assets/sounds/horse.mp3',
          ),
          lastcard(
            image: 'image/robin.png',
            text: 'Bird',
            audioFile: 'assets/sounds/bird.mp3',
          ),
          lastcard(
            image: 'image/hyena.png',
            text: 'Hyena',
            audioFile: 'assets/sounds/hyena.mp3',
          ),
          lastcard(
            image: 'image/butterfly.png',
            text: 'Butterfly',
            audioFile: 'assets/sounds/butterfly.mp3',
          ),
          lastcard(
            image: 'image/lion.png',
            text: 'Lion',
            audioFile: 'assets/sounds/lion.mp3',
          ),
          lastcard(
            image: 'image/ox.png',
            text: 'Ox',
            audioFile: 'assets/sounds/ox.mp3',
          ),
          lastcard(
            image: 'image/elephant.png',
            text: 'Elephant',
            audioFile: 'assets/sounds/elephant.mp3',
          ),
          lastcard(
            image: 'image/giraffe.png',
            text: 'Giraffe',
            audioFile: 'assets/sounds/giraffe.mp3',
          ),
          lastcard(
            image: 'image/tiger.png',
            text: 'Tiger',
            audioFile: 'assets/sounds/tiger.mp3',
          ),
        ],
      ),
    );
  }
}
