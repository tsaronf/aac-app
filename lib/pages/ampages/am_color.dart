import 'package:flutter/material.dart';
import 'package:sampleproject/components/lastcard.dart';

class am_color extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "ቀለም",
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
            text: 'ጥቁር',
            audioFile: 'assets/sounds/Black-am.mp3',
          ),
          lastcard(
            image: 'image/oval.png',
            text: 'ነጭ',
            audioFile: 'assets/sounds/White-am.mp3',
          ),
          lastcard(
            image: 'image/red circle.png',
            text: 'ቀይ',
            audioFile: 'assets/sounds/Red-am.mp3',
          ),
          lastcard(
            image: 'image/green color.png',
            text: 'አረንጓዴ',
            audioFile: 'assets/sounds/Green-am.mp3',
          ),
          lastcard(
            image: 'image/yellow circle.png',
            text: 'ቢጫ',
            audioFile: 'assets/sounds/Yellow-am.mp3',
          ),
          lastcard(
            image: 'image/blue color.png',
            text: 'ሠማያዊ',
            audioFile: 'assets/sounds/Blue-am.mp3',
          ),
          lastcard(
            image: 'image/pink color.png',
            text: 'ሮዝ',
            audioFile: 'assets/sounds/Rose-am.mp3',
          ),
          lastcard(
            image: 'image/grey color.png',
            text: 'ግራጫ',
            audioFile: 'assets/sounds/Grey-am.mp3',
          ),
          lastcard(
            image: 'image/brown color.png',
            text: 'ቡኒ',
            audioFile: 'assets/sounds/Brown-am.mp3',
          ),
          lastcard(
            image: 'image/orange color.png',
            text: 'ብርቱካናማ',
            audioFile: 'assets/sounds/orange-am.mp3',
          ),
          lastcard(
            image: 'image/purple color.png',
            text: 'ሐምራዊ',
            audioFile: 'assets/sounds/violet-am.mp3',
          ),
        ],
      ),
    );
  }
}
