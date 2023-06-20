import 'package:flutter/material.dart';
import 'package:sampleproject/components/animationCard.dart';

class am_quickChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "ንግግር",
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
            text: 'አዎ',

            // audioFile: 'assets/sounds/enGreetings01.mp3',
          ),
          AnimationCard(
            image: 'image/no.webp',
            text: 'አይ',

            // audioFile: 'assets/sounds/enGreetings02.mp3',
          ),
          AnimationCard(
            image: 'image/toilet.webp',
            text: 'ሽንት ቤት',

            // audioFile: 'assets/sounds/enGreetings03.mp3',
          ),
          AnimationCard(
            image: 'image/sick.webp',
            text: 'አሞኛል',

            // audioFile: 'assets/sounds/enGreetings04.mp3',
          ),
          AnimationCard(
            image: 'image/notwant.webp',
            text: 'አልፋልግም',

            // audioFile: 'assets/sounds/enGreetings05.mp3',
          ),
          AnimationCard(
            image: 'image/morning.webp',
            text: 'እንደምን አደራቹ',

            // audioFile: 'assets/sounds/enGreetings06.mp3',
          ),
          AnimationCard(
            image: 'image/night.webp',
            text: 'እንደምን አመሻቹ',

            // audioFile: 'assets/sounds/enGreetings06.mp3',
          ),
          AnimationCard(
            image: 'image/good night.webp',
            text: 'ደና ደሩ',

            // audioFile: 'assets/sounds/enGreetings06.mp3',
          ),
          AnimationCard(
            image: 'image/sorry.webp',
            text: 'ይቅርታ',

            // audioFile: 'assets/sounds/enGreetings06.mp3',
          ),
          AnimationCard(
            image: 'image/thank you.webp',
            text: 'አመሰናለሁ',
            // audioFile: 'assets/sounds/enGreetings06.mp3',
          ),
        ],
      ),
    );
  }
}
