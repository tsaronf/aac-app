import 'package:flutter/material.dart';
import 'package:sampleproject/components/lastcard.dart';

class cloths extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "Clothes",
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
            text: 'Trousers',
            audioFile: 'assets/sounds/pants.mp3',
          ),
          lastcard(
            image: 'image/sweater.png',
            text: 'Sweater',
            audioFile: 'assets/sounds/sweater.mp3',
          ),
          lastcard(
            image: 'image/jacket.png',
            text: 'Jacket',
            audioFile: 'assets/sounds/Jacket.mp3',
          ),
          lastcard(
            image: 'image/shirt.png',
            text: 'T-shirt',
            audioFile: 'assets/sounds/T-shirt.mp3',
          ),
          lastcard(
            image: 'image/socks.png',
            text: 'Socks',
            audioFile: 'assets/sounds/socks.mp3',
          ),
          lastcard(
            image: 'image/underwear.png',
            text: 'Underwear',
            audioFile: 'assets/sounds/under wear.mp3',
          ),
          lastcard(
            image: 'image/shoes.png',
            text: 'Shoes',
            audioFile: 'assets/sounds/shoe.mp3',
          ),
          lastcard(
            image: 'image/Shirtv.png',
            text: 'Shirt',
            audioFile: 'assets/sounds/T-shirt.mp3',
          ),
          lastcard(
            image: 'image/dress.png',
            text: 'Dress',
            audioFile: 'assets/sounds/Dress.mp3',
          ),
        ],
      ),
    );
  }
}
