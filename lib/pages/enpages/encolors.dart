import 'package:flutter/material.dart';
import 'package:sampleproject/components/lastcard.dart';

class encolors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "Colors",
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
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/oval.png',
            text: 'White',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/red circle.png',
            text: 'Red',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/green color.png',
            text: 'Green',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/yellow circle.png',
            text: 'Yellow',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/blue color.png',
            text: 'Blue',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/pink color.png',
            text: 'Pink',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/grey color.png',
            text: 'Grey',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/brown color.png',
            text: 'Brown',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/orange color.png',
            text: 'Orange',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/purple color.png',
            text: 'Purple',
            // audioFile: 'voice/Black.ogg',
          ),
        ],
      ),
    );
  }
}
