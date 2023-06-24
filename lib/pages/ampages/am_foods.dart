import 'package:flutter/material.dart';
import 'package:sampleproject/components/lastcard.dart';

class am_foods extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "ምግብ",
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
            text: 'አፕል',
                        audioFile: 'assets/sounds/apple-am.mp3',
          ),
          lastcard(
            image: 'image/avocado.png',
            text: 'አቮካዶ',
                        audioFile: 'assets/sounds/Avocado-am.mp3',
          ),
          lastcard(
            image: 'image/bananas.png',
            text: 'ሙዝ',
                        audioFile: 'assets/sounds/Banana-am.mp3',
          ),
          lastcard(
            image: 'image/bread.png',
            text: 'ዳቦ',
                        audioFile: 'assets/sounds/Bread-am.mp3',
          ),
          lastcard(
            image: 'image/cabbage.png',
            text: 'ጎመን',
                        audioFile: 'assets/sounds/Collard-am.mp3',
          ),
          lastcard(
            image: 'image/carrot.png',
            text: 'ካሮት',
                        audioFile: 'assets/sounds/Carrot-am.mp3',
          ),
          lastcard(
            image: 'image/chechebsa.png',
            text: 'ጨጨብሳ',
                        audioFile: 'assets/sounds/chechebsa-am.mp3',
          ),
          lastcard(
            image: 'image/chocolate.png',
            text: 'ቸኮሌት',
                        audioFile: 'assets/sounds/Chocolate-am.mp3',
          ),
          lastcard(
            image: 'image/cookies.png',
            text: 'ብስኩት',
                        audioFile: 'assets/sounds/biscuit-am.mp3',
          ),
          lastcard(
            image: 'image/corn.png',
            text: 'በቆሎ',
                        audioFile: 'assets/sounds/Corn-am.mp3',
          ),
          lastcard(
            image: 'image/ferfer.png',
            text: 'ፍርፍር',
                        audioFile: 'assets/sounds/Firfir-am.mp3',
          ),
          lastcard(
            image: 'image/genfo.webp',
            text: 'ገንፎ',
                        audioFile: 'assets/sounds/Genfo-am.mp3',
          ),
          lastcard(
            image: 'image/injera.jpg',
            text: 'እንጀራ',
                        audioFile: 'assets/sounds/Injera-am.mp3',
          ),
          lastcard(
            image: 'image/lemon.png',
            text: 'ሎሚ',
                        audioFile: 'assets/sounds/Lemon-am.mp3',
          ),
          lastcard(
            image: 'image/mango.png',
            text: 'ማንጎ',
                        audioFile: 'assets/sounds/Mango-am.mp3',
          ),
          lastcard(
            image: 'image/orange.png',
            text: 'ብርቱካን',
                        audioFile: 'assets/sounds/orange-am.mp3',
          ),
          lastcard(
            image: 'image/papaya.png',
            text: 'ፓፓያ',
                        audioFile: 'assets/sounds/papaya-am.mp3',
          ),
          lastcard(
            image: 'image/pasta.png',
            text: 'ፓስታ',
                        audioFile: 'assets/sounds/pasta-am.mp3',
          ),
          lastcard(
            image: 'image/pineapple.png',
            text: 'አናናስ',
                        audioFile: 'assets/sounds/Pinapple-am.mp3',
          ),
          lastcard(
            image: 'image/potato.png',
            text: 'ድንች',
                        audioFile: 'assets/sounds/Potato-am.mp3',
          ),
          lastcard(
            image: 'image/shiro.png',
            text: 'ሽሮ',
                        audioFile: 'assets/sounds/Shiro-am.mp3',
          ),
          lastcard(
            image: 'image/tomato.png',
            text: 'ቲማቲም',
                        audioFile: 'assets/sounds/Tomato-am.mp3',
          ),
          lastcard(
            image: 'image/watermelon.png',
            text: 'ሃባብ',
                        audioFile: 'assets/sounds/watermelon-am.mp3',
          ),
        ],
      ),
    );
  }
}
