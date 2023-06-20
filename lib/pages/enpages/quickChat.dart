import 'package:flutter/material.dart';
import 'package:sampleproject/components/animationCard.dart';

class quickChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "Quick Chat",
          style: TextStyle(
            fontFamily: 'Source Sans Pro',
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Color(0xFFF3F3F3),
      body: ListView(
        children: <Widget>[
          AnimationCard(
            image: 'image/yes.webp',
            text: 'Yes',

            // audioFile: 'assets/sounds/enGreetings01.mp3',
          ),
          AnimationCard(
            image: 'image/no.webp',
            text: 'No',

            // audioFile: 'assets/sounds/enGreetings02.mp3',
          ),
          AnimationCard(
            image: 'image/toilet.webp',
            text: 'Toilet',

            // audioFile: 'assets/sounds/enGreetings03.mp3',
          ),
          AnimationCard(
            image: 'image/sick.webp',
            text: 'I am sick',

            // audioFile: 'assets/sounds/enGreetings04.mp3',
          ),
          AnimationCard(
            image: 'image/notwant.webp',
            text: 'I dont want it',

            // audioFile: 'assets/sounds/enGreetings05.mp3',
          ),
          AnimationCard(
            image: 'image/morning.webp',
            text: 'Good morning',

            // audioFile: 'assets/sounds/enGreetings06.mp3',
          ),
          AnimationCard(
            image: 'image/night.webp',
            text: 'Good evening',

            // audioFile: 'assets/sounds/enGreetings06.mp3',
          ),
          AnimationCard(
            image: 'image/good night.webp',
            text: 'Good night',

            // audioFile: 'assets/sounds/enGreetings06.mp3',
          ),
          AnimationCard(
            image: 'image/sorry.webp',
            text: 'Sorry',

            // audioFile: 'assets/sounds/enGreetings06.mp3',
          ),
          AnimationCard(
            image: 'image/thank you.webp',
            text: 'Thank you',
            // audioFile: 'assets/sounds/enGreetings06.mp3',
          ),
        ],
      ),
    );
  }
}