import 'package:flutter/material.dart';
import 'package:sampleproject/components/lastcard.dart';

class am_materials extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "ቁሳቁስ",
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
            image: 'image/cup.png',
            text: 'ኩባያ',
            audioFile: 'assets/sounds/Cup-am.mp3',

            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/potty.png',
            text: 'ፖፖ',
            audioFile: 'assets/sounds/Potty-am.mp3',

            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/tv-app.png',
            text: 'ቲቪ',
            audioFile: 'assets/sounds/TV-am.mp3',

            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/sofa.png',
            text: 'ሶፋ',
            audioFile: 'assets/sounds/Sofa-am.mp3',

            // audioFile: 'voice/Black.ogg',
          ),

          lastcard(
            image: 'image/spoon.png',
            text: 'ማንኪያ',
            audioFile: 'assets/sounds/Spoon-am.mp3',
          ),
          lastcard(
            image: 'image/fork.png',
            text: 'ሹካ',
            audioFile: 'assets/sounds/Fork-am.mp3',
          ),
          lastcard(
            image: 'image/plates.png',
            text: 'ሳህን',
            audioFile: 'assets/sounds/Plate-am.mp3',
          ),
          lastcard(
            image: 'image/pillow.png',
            text: 'ትራስ',
            audioFile: 'assets/sounds/Pillow-am.mp3',
          ),
          lastcard(
            image: 'image/doll.png',
            text: 'አሻንጉሊት',
            audioFile: 'assets/sounds/Doll-am.mp3',
          ),
          lastcard(
            image: 'image/cabinet.png',
            text: 'ኮመዲኖ',
            audioFile: 'assets/sounds/Table-am.mp3',
          ),
          lastcard(
            image: 'image/table.png',
            text: 'ጠረቤዛ',
            audioFile: 'assets/sounds/Table-am.mp3',
          ),
          lastcard(
            image: 'image/book.png',
            text: 'መጽሓፍ',
            audioFile: 'assets/sounds/Book-am.mp3',
          ),
          lastcard(
            image: 'image/phone.png',
            text: 'ስልክ',
            audioFile: 'assets/sounds/Phone-am.mp3',
          ),
          lastcard(
            image: 'image/key.png',
            text: 'ቁልፍ',
            audioFile: 'assets/sounds/Key-am.mp3',
          ),
          lastcard(
            image: 'image/door.png',
            text: 'በር',
            audioFile: 'assets/sounds/Door-am.mp3',
          ),
          lastcard(
            image: 'image/toothbrush.png',
            text: 'ጥርስ ብሩሽ',
            audioFile: 'assets/sounds/Tooth brush-am.mp3',
          ),
          lastcard(
            image: 'image/toys.png',
            text: 'እቃቃ',
            audioFile: 'assets/sounds/eka eka-am.mp3',
          ),
          lastcard(
            image: 'image/pencil.png',
            text: 'እስራስ',
            audioFile: 'assets/sounds/pencil-am.mp3',
          ),
          lastcard(
            image: 'image/pen.png',
            text: 'እስክርቢቶ',
            audioFile: 'assets/sounds/pen-am.mp3',
          ),
          lastcard(
            image: 'image/soap.png',
            text: 'ሣሙና',
            audioFile: 'assets/sounds/soap-am.mp3',
          ),
          lastcard(
            image: 'image/mirror.png',
            text: 'መስታወት',
            audioFile: 'assets/sounds/Mirror-am.mp3',
          ),
          lastcard(
            image: 'image/paper.png',
            text: 'ወረቀት',
            audioFile: 'assets/sounds/Paper-am.mp3',
          ),
          //  lastcard(
          //   image: 'image/ball.png',
          //   text: 'ኳስ',
          //   audioFile: 'assets/sounds/Elephant-am.mp3',
          // ),
          lastcard(
            image: 'image/comb.png',
            text: 'ማበጠሪያ',
            audioFile: 'assets/sounds/Comb-am.mp3',
          ),
        ],
      ),
    );
  }
}
