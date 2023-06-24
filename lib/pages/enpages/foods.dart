import 'package:flutter/material.dart';
import 'package:sampleproject/components/lastcard.dart';

class foods extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "Foods",
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
            image: 'image/apple.png',
            text: 'Apple',
            audioFile: 'assets/sounds/apple.mp3',
          ),
          lastcard(
            image: 'image/avocado.png',
            text: 'Avocado',
            audioFile: 'assets/sounds/avocado.mp3',
          ),
          lastcard(
            image: 'image/bananas.png',
            text: 'Banana',
            audioFile: 'assets/sounds/banana.mp3',
          ),
          lastcard(
            image: 'image/bread.png',
            text: 'Bread',
            audioFile: 'assets/sounds/bread.mp3',
          ),
          lastcard(
            image: 'image/cabbage.png',
            text: 'Cabbage',
            audioFile: 'assets/sounds/cabbage.mp3',
          ),
          lastcard(
            image: 'image/carrot.png',
            text: 'Carrot',
            audioFile: 'assets/sounds/carrot.mp3',
          ),
          lastcard(
            image: 'image/chechebsa.png',
            text: 'Chechebsa',
            audioFile: 'assets/sounds/chechebsa-am.mp3',
          ),
          lastcard(
            image: 'image/chocolate.png',
            text: 'Chocolate',
            audioFile: 'assets/sounds/Chocolate.mp3',
          ),
          lastcard(
            image: 'image/cookies.png',
            text: 'Biscuit',
            audioFile: 'assets/sounds/biscuit.mp3',
          ),
          lastcard(
            image: 'image/corn.png',
            text: 'Corn',
            audioFile: 'assets/sounds/Corn.mp3',
          ),
          lastcard(
            image: 'image/ferfer.png',
            text: 'Ferfer',
            audioFile: 'assets/sounds/Firfir-am.mp3',
          ),
          lastcard(
            image: 'image/genfo.webp',
            text: 'Genfo',
            audioFile: 'assets/sounds/Genfo-am.mp3',
          ),
          lastcard(
            image: 'image/injera.jpg',
            text: 'Injera',
            audioFile: 'assets/sounds/Injera-am.mp3',
          ),
          lastcard(
            image: 'image/lemon.png',
            text: 'Lemon',
            audioFile: 'assets/sounds/lemon.mp3',
          ),
          lastcard(
            image: 'image/mango.png',
            text: 'Mango',
            audioFile: 'assets/sounds/mango.mp3',
          ),
          lastcard(
            image: 'image/orange.png',
            text: 'Orange',
            audioFile: 'assets/sounds/Orange.mp3',
          ),
          lastcard(
            image: 'image/papaya.png',
            text: 'Papaya',
            audioFile: 'assets/sounds/papaya.mp3',
          ),
          lastcard(
            image: 'image/pasta.png',
            text: 'Pasta',
            audioFile: 'assets/sounds/pasta.mp3',
          ),
          lastcard(
            image: 'image/pineapple.png',
            text: 'Pineapple',
            audioFile: 'assets/sounds/pineapple.mp3',
          ),
          lastcard(
            image: 'image/potato.png',
            text: 'Potato',
            audioFile: 'assets/sounds/potato.mp3',
          ),
          lastcard(
            image: 'image/shiro.png',
            text: 'Shiro',
            audioFile: 'assets/sounds/shiro.mp3',
          ),
          lastcard(
            image: 'image/tomato.png',
            text: 'Tomato',
            audioFile: 'assets/sounds/tomato.mp3',
          ),
          lastcard(
            image: 'image/watermelon.png',
            text: 'Watermelon',
            audioFile: 'assets/sounds/watermelon.mp3',
          ),
        ],
      ),
    );
  }
}
