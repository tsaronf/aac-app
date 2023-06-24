import 'package:flutter/material.dart';
import 'package:sampleproject/components/lastcard.dart';

class bodyparts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "Body Parts",
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
            image: 'image/teeth.png',
            text: 'Teeth',
            audioFile: 'assets/sounds/teeth.mp3',
          ),
          lastcard(
            image: 'image/eye.png',
            text: 'Eye',
            audioFile: 'assets/sounds/Eye.mp3',
          ),
          lastcard(
            image: 'image/nose.png',
            text: 'Nose',
            audioFile: 'assets/sounds/nose.mp3',
          ),
          lastcard(
            image: 'image/back.png',
            text: 'Back',
            audioFile: 'assets/sounds/back.mp3',
          ),
          lastcard(
            image: 'image/buttocks.png',
            text: 'Ass',
            audioFile: 'assets/sounds/ass.mp3',
          ),
          lastcard(
            image: 'image/chest.png',
            text: 'Chest',
            audioFile: 'assets/sounds/chest.mp3',
          ),
          lastcard(
            image: 'image/ear.png',
            text: 'Ear',
            audioFile: 'assets/sounds/Ear.mp3',
          ),
          lastcard(
            image: 'image/hello.png',
            text: 'Hand',
            audioFile: 'assets/sounds/hand.mp3',
          ),
          lastcard(
            image: 'image/knee.png',
            text: 'Knee',
            audioFile: 'assets/sounds/knee.mp3',
          ),
          lastcard(
            image: 'image/legs.png',
            text: 'Legs',
            audioFile: 'assets/sounds/leg.mp3',
          ),
          lastcard(
            image: 'image/nail.png',
            text: 'Nails',
            audioFile: 'assets/sounds/nail.mp3',
          ),
          lastcard(
            image: 'image/open-mouth.png',
            text: 'Mouth',
            audioFile: 'assets/sounds/mouth.mp3',
          ),
          lastcard(
            image: 'image/stomach.png',
            text: 'Stomach',
            audioFile: 'assets/sounds/stomach.mp3',
          ),
          lastcard(
            image: 'image/neck.png',
            text: 'Neck',
            audioFile: 'assets/sounds/neck.mp3',
          ),
          lastcard(
            image: 'image/tongue.png',
            text: 'Tounge',
            audioFile: 'assets/sounds/tounge.mp3',
          ),
          lastcard(
            image: 'image/hair.png',
            text: 'Hair',
            audioFile: 'assets/sounds/hair.mp3',
          ),
          lastcard(
            image: 'image/head.png',
            text: 'Head',
            audioFile: 'assets/sounds/head.mp3',
          ),
        ],
      ),
    );
  }
}
