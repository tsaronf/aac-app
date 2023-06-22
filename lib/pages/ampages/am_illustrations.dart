import 'package:flutter/material.dart';
import 'package:sampleproject/components/lastcard.dart';

class am_illustrations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "ምሥሌ",
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
            image: 'image/a book.png',
            text: 'መጽሐፍ',
            audioFile: 'assets/sounds/a book-am.mp3',

            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/book-stack.png',
            text: 'መጻሕፍት',
            audioFile: 'assets/sounds/many books-am.mp3',

            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/big house.png',
            text: 'ትልቅ',
            audioFile: 'assets/sounds/big-am.mp3',

            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/small house.png',
            text: 'ትንሽ',
            audioFile: 'assets/sounds/small-am.mp3',

            // audioFile: 'voice/Black.ogg',
          ),

          lastcard(
            image: 'image/clean cloth.png',
            text: 'ንጹህ ልብስ',
            audioFile: 'assets/sounds/clean cloth-am.mp3',
          ),
          lastcard(
            image: 'image/dirty clothes.png',
            text: 'ቆሻሻ ልብስ',
            audioFile: 'assets/sounds/dirty cloth-am.mp3',
          ),
          lastcard(
            image: 'image/cold milk .png',
            text: 'ቀዝቃዛ ወተት',
            audioFile: 'assets/sounds/cold milk-am.mp3',
          ),
          lastcard(
            image: 'image/hot milk.png',
            text: 'ትኩስ ወተት',
            audioFile: 'assets/sounds/hot milk-am.mp3',
          ),
          lastcard(
            image: 'image/empty-box.png',
            text: 'ባዶ ሳጥን',
            audioFile: 'assets/sounds/empty box-am.mp3',
          ),
          lastcard(
            image: 'image/full box.png',
            text: 'ሙሉ ሳጥን',
            audioFile: 'assets/sounds/full box-am.mp3',
          ),
          lastcard(
            image: 'image/love.png',
            text: 'እወድሻለሁ',
            audioFile: 'assets/sounds/I love you girl-am.mp3',
          ),
          lastcard(
            image: 'image/love.png',
            text: 'እወድሃለሁ',
            audioFile: 'assets/sounds/i love you-am.mp3',
          ),
          lastcard(
            image: 'image/teenager.png',
            text: 'ወጣት',
            audioFile: 'assets/sounds/young-am.mp3',
          ),
          lastcard(
            image: 'image/old.png',
            text: 'ሽማግሌ',
            audioFile: 'assets/sounds/old-am.mp3',
          ),
          lastcard(
            image: 'image/red ball.png',
            text: 'ቀይ ኳስ ',
            audioFile: 'assets/sounds/red ball-am.mp3',
          ),
          lastcard(
            image: 'image/yellow ball.png',
            text: 'ቢጫ ኳስ',
            audioFile: 'assets/sounds/yellow ball-am.mp3',
          ),
          lastcard(
            image: 'image/open door.png',
            text: 'መክፈት',
            audioFile: 'assets/sounds/open-am.mp3',
          ),
          lastcard(
            image: 'image/closed door.png',
            text: 'መዝጋት',
            audioFile: 'assets/sounds/close-am.mp3',
          ),
        ],
      ),
    );
  }
}
