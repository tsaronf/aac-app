import 'package:flutter/material.dart';
import 'package:sampleproject/components/lastcard.dart';

class color extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "Color",
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
            image: 'image/black color.png',
            text: 'Black',
            audioFile: 'assets/sounds/black.mp3',
          ),
          lastcard(
            image: 'image/oval.png',
            text: 'White',
            audioFile: 'assets/sounds/white.mp3',
          ),
          lastcard(
            image: 'image/red circle.png',
            text: 'Red',
            audioFile: 'assets/sounds/red.mp3',
          ),
          lastcard(
            image: 'image/green color.png',
            text: 'Green',
            audioFile: 'assets/sounds/green.mp3',
          ),
          lastcard(
            image: 'image/yellow circle.png',
            text: 'Yellow',
            audioFile: 'assets/sounds/yellow.mp3',
          ),
          lastcard(
            image: 'image/blue color.png',
            text: 'Blue',
            audioFile: 'assets/sounds/blue.mp3',
          ),
          lastcard(
            image: 'image/pink color.png',
            text: 'Pink',
            audioFile: 'assets/sounds/pink.mp3',
          ),
          lastcard(
            image: 'image/grey color.png',
            text: 'Grey',
            audioFile: 'assets/sounds/grey.mp3',
          ),
          lastcard(
            image: 'image/brown color.png',
            text: 'Brown',
            audioFile: 'assets/sounds/Brown.mp3',
          ),
          lastcard(
            image: 'image/orange color.png',
            text: 'Orange',
            audioFile: 'assets/sounds/Orange.mp3',
          ),
          lastcard(
            image: 'image/purple color.png',
            text: 'Purple',
            audioFile: 'assets/sounds/Purple.mp3',
          ),
        ],
      ),
    );
  }
}
