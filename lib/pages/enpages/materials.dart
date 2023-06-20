import 'package:flutter/material.dart';
import 'package:sampleproject/components/lastcard.dart';

class materials extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "Materials",
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
            image: 'image/coffee.png',
            text: 'Cup',
            audioFile: 'assets/sounds/cup.mp3',

            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/potty.png',
            text: 'Potty',
            audioFile: 'assets/sounds/Potty trainer.mp3',

            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/tv-app.png',
            text: 'TV',
            audioFile: 'assets/sounds/TV-am.mp3',

            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/sofa.png',
            text: 'Sofa',
            audioFile: 'assets/sounds/sofa.mp3',

            // audioFile: 'voice/Black.ogg',
          ),

          lastcard(
            image: 'image/spoon.png',
            text: 'Spoon',
            audioFile: 'assets/sounds/spoon.mp3',
          ),
          lastcard(
            image: 'image/fork.png',
            text: 'Fork',
            audioFile: 'assets/sounds/fork.mp3',
          ),
          lastcard(
            image: 'image/plates.png',
            text: 'plate',
            audioFile: 'assets/sounds/plate.mp3',
          ),
          lastcard(
            image: 'image/pillow.png',
            text: 'Pillow',
            audioFile: 'assets/sounds/pillow.mp3',
          ),
          lastcard(
            image: 'image/doll.png',
            text: 'Doll',
            audioFile: 'assets/sounds/Doll-am.mp3',
          ),
          lastcard(
            image: 'image/cabinet.png',
            text: 'Cabinate',
            audioFile: 'assets/sounds/Table-am.mp3',
          ),
          lastcard(
            image: 'image/table.png',
            text: 'Table',
            audioFile: 'assets/sounds/table.mp3',
          ),
          lastcard(
            image: 'image/book.png',
            text: 'Book',
            audioFile: 'assets/sounds/book.mp3',
          ),
          lastcard(
            image: 'image/phone.png',
            text: 'Phone',
            audioFile: 'assets/sounds/phone.mp3',
          ),
          lastcard(
            image: 'image/key.png',
            text: 'Key',
            audioFile: 'assets/sounds/key.mp3',
          ),
          lastcard(
            image: 'image/door.png',
            text: 'Door',
            audioFile: 'assets/sounds/door.mp3',
          ),
          lastcard(
            image: 'image/toothbrush.png',
            text: 'Toothbrush',
            audioFile: 'assets/sounds/tooth brush.mp3',
          ),
          lastcard(
            image: 'image/toys.png',
            text: 'Toys',
            audioFile: 'assets/sounds/toys.mp3',
          ),
          lastcard(
            image: 'image/pencil.png',
            text: 'Pencil',
            audioFile: 'assets/sounds/pencil.mp3',
          ),
          lastcard(
            image: 'image/pen.png',
            text: 'Pen',
            audioFile: 'assets/sounds/pen.mp3',
          ),
          lastcard(
            image: 'image/soap.png',
            text: 'Soap',
            audioFile: 'assets/sounds/soap.mp3',
          ),
          lastcard(
            image: 'image/mirror.png',
            text: 'Mirror',
            audioFile: 'assets/sounds/mirror.mp3',
          ),
          lastcard(
            image: 'image/paper.png',
            text: 'Paper',
            audioFile: 'assets/sounds/paper.mp3',
          ),
          //  lastcard(
          //   image: 'image/ball.png',
          //   text: 'ኳስ',
          //   audioFile: 'assets/sounds/Elephant-am.mp3',
          // ),
          lastcard(
            image: 'image/comb.png',
            text: 'Comb',
            audioFile: 'assets/sounds/comb.mp3',
          ),
        ],
      ),
    );
  }
}
