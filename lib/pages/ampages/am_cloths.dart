import 'package:flutter/material.dart';
import 'package:sampleproject/components/lastcard.dart';

class am_cloths extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "አልባሳት",
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
            image: 'image/trousers.png',
            text: 'ሱሪ',
            audioFile: 'assets/sounds/Black-am.mp3',
          ),
          lastcard(
            image: 'image/sweater.png',
            text: 'ሹራብ',
            audioFile: 'assets/sounds/Sweater-am.mp3',
          ),
          lastcard(
            image: 'image/jacket.png',
            text: 'ጃኬት',
            audioFile: 'assets/sounds/Jacket-am.mp3',
          ),
          lastcard(
            image: 'image/shirt.png',
            text: 'ቲሸርት',
            audioFile: 'assets/sounds/T-shirt-am.mp3',
          ),
          lastcard(
            image: 'image/socks.png',
            text: 'ካልሲ',
            audioFile: 'assets/sounds/Socks-am.mp3',
          ),
          lastcard(
            image: 'image/underwear.png',
            text: 'ፓንት',
            audioFile: 'assets/sounds/Underpants-am.mp3',
          ),
          lastcard(
            image: 'image/shoes.png',
            text: 'ጫማ',
            audioFile: 'assets/sounds/Shoe-am.mp3',
          ),
          lastcard(
            image: 'image/shirt(1).png',
            text: 'ሸሚዝ',
            audioFile: 'assets/sounds/T-shirt-am.mp3',
          ),
          lastcard(
            image: 'image/dress.png',
            text: 'ቀሚስ',
            audioFile: 'assets/sounds/Dress-am.mp3',
          ),
        ],
      ),
    );
  }
}
