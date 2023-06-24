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
            audioFile: 'assets/sounds/yes-am.mp3',

            // audioFile: 'assets/sounds/enGreetings01.mp3',
          ),
          AnimationCard(
            image: 'image/no.webp',
            text: 'አይ',
            audioFile: 'assets/sounds/no-am.mp3',

            // audioFile: 'assets/sounds/enGreetings02.mp3',
          ),
          AnimationCard(
            image: 'image/toilet.webp',
            text: 'ሽንት ቤት',
            audioFile: 'assets/sounds/where is the toilet-am.mp3',

            // audioFile: 'assets/sounds/enGreetings03.mp3',
          ),
          AnimationCard(
            image: 'image/sick.webp',
            text: 'አሞኛል',
            audioFile: 'assets/sounds/i am sick-am.mp3',

            // audioFile: 'assets/sounds/enGreetings04.mp3',
          ),
          AnimationCard(
            image: 'image/notwant.webp',
            text: 'ያንን አልፋልግም',
            audioFile: 'assets/sounds/i dont want that-am.mp3',

            // audioFile: 'assets/sounds/enGreetings05.mp3',
          ),
          AnimationCard(
            image: 'image/morning.webp',
            text: 'እንደምን አደራቹ',
            audioFile: 'assets/sounds/good morning-am.mp3',

            // audioFile: 'assets/sounds/enGreetings06.mp3',
          ),
          AnimationCard(
            image: 'image/night.webp',
            text: 'መልካም ምሽት',
            audioFile: 'assets/sounds/good evening-am.mp3',

            // audioFile: 'assets/sounds/enGreetings06.mp3',
          ),
          AnimationCard(
            image: 'image/good night.webp',
            text: 'ደና ደሩ',
            audioFile: 'assets/sounds/good night-am.mp3',

            // audioFile: 'assets/sounds/enGreetings06.mp3',
          ),
          AnimationCard(
            image: 'image/sorry.webp',
            text: 'ይቅርታ',
            audioFile: 'assets/sounds/sorry-am.mp3',

            // audioFile: 'assets/sounds/enGreetings06.mp3',
          ),
          AnimationCard(
            image: 'image/thank you.webp',
            text: 'አመሰናለሁ',
            audioFile: 'assets/sounds/thank you-am.mp3',

            // audioFile: 'assets/sounds/enGreetings06.mp3',
          ),
        ],
      ),
    );
  }
}
