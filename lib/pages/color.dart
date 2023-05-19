import 'package:flutter/material.dart';
import 'package:sampleproject/components/lastcard.dart';

class color extends StatelessWidget {
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
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/oval.png',
            text: 'ነጭ',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/red circle.png',
            text: 'ቀይ',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/green color.png',
            text: 'አረንጓዴ',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/yellow circle.png',
            text: 'ቢጫ',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/blue color.png',
            text: 'ሠማያዊ',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/pink color.png',
            text: 'ሮዝ',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/grey color.png',
            text: 'ግራጫ',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/brown color.png',
            text: 'ቡኒ',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/orange color.png',
            text: 'ብርቱካናማ',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/purple color.png',
            text: 'ሐምራዊ',
            // audioFile: 'voice/Black.ogg',
          ),
        ],
      ),
    );
  }
}
