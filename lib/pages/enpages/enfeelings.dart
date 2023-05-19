import 'package:flutter/material.dart';
import 'package:sampleproject/components/lastcard.dart';

class enfeelings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "Feelings",
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
            image: 'image/afraid.png',
            text: 'Scared',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/bored.png',
            text: 'Bored',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/cold.png',
            text: 'Cold',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/fatigue.png',
            text: 'Tired',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/happy.png',
            text: 'Happy',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/hot.png',
            text: 'Hot',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/hungry.png',
            text: 'Hungry',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/nervous.png',
            text: 'Afraid',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/thirsty.png',
            text: 'Thirsty',
            // audioFile: 'voice/Black.ogg',
          ),
        ],
      ),
    );
  }
}
