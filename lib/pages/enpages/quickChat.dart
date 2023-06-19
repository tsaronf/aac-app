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
          animationCard(
            image: 'assets/images/enGreetings01.png',
            text: 'መሮጥ',

            // audioFile: 'assets/sounds/enGreetings01.mp3',
          ),
          animationCard(
            image: 'assets/images/enGreetings02.png',
            text: 'መሮጥ',

            // audioFile: 'assets/sounds/enGreetings02.mp3',
          ),
          animationCard(
            image: 'assets/images/enGreetings03.png',
            text: 'መሮጥ',

            // audioFile: 'assets/sounds/enGreetings03.mp3',
          ),
          animationCard(
            image: 'assets/images/enGreetings04.png',
            text: 'መሮጥ',

            // audioFile: 'assets/sounds/enGreetings04.mp3',
          ),
          animationCard(
            image: 'assets/images/enGreetings05.png',
            text: 'መሮጥ',

            // audioFile: 'assets/sounds/enGreetings05.mp3',
          ),
          animationCard(
            image: 'assets/images/enGreetings06.png',
            text: 'መሮጥ',

            // audioFile: 'assets/sounds/enGreetings06.mp3',
          ),
        ],
      ),
    );
  }
}
