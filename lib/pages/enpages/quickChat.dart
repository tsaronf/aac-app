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
            audioFile: 'assets/sounds/yes.mp3',
          ),
          AnimationCard(
            image: 'image/no.webp',
            text: 'No',
            audioFile: 'assets/sounds/no.mp3',
          ),
          AnimationCard(
            image: 'image/toilet.webp',
            text: 'Where is the toilet',
            audioFile: 'assets/sounds/where is the toilet.mp3',
          ),
          AnimationCard(
            image: 'image/sick.webp',
            text: 'I am sick',
            audioFile: 'assets/sounds/I am sick.mp3',
          ),
          AnimationCard(
            image: 'image/notwant.webp',
            text: 'I dont want that',
            audioFile: 'assets/sounds/I dont want that.mp3',
          ),
          AnimationCard(
            image: 'image/morning.webp',
            text: 'Good morning',
            audioFile: 'assets/sounds/good morning.mp3',
          ),
          AnimationCard(
            image: 'image/night.webp',
            text: 'Good evening',
            audioFile: 'assets/sounds/good evening.mp3',
          ),
          AnimationCard(
            image: 'image/good night.webp',
            text: 'Good night',
            audioFile: 'assets/sounds/good night.mp3',
          ),
          AnimationCard(
            image: 'image/sorry.webp',
            text: 'Sorry',
            audioFile: 'assets/sounds/sorry.mp3',
          ),
          AnimationCard(
            image: 'image/thank you.webp',
            text: 'Thank you',
            audioFile: 'assets/sounds/thank you.mp3',
          ),
        ],
      ),
    );
  }
}
