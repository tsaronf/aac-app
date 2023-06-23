import 'package:flutter/material.dart';
import 'package:sampleproject/components/lastcard.dart';

class illustrations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "Examples",
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
            text: 'A book',
            audioFile: 'assets/sounds/a book.mp3',

            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/book-stack.png',
            text: 'Books',
            audioFile: 'assets/sounds/many books.mp3',

            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/big house.png',
            text: 'Big house',
            audioFile: 'assets/sounds/big house.mp3',

            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/small house.png',
            text: 'Small house',
            audioFile: 'assets/sounds/small house.mp3',

            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/clean cloth.png',
            text: 'Clean cloth',
            audioFile: 'assets/sounds/clean cloth.mp3',
          ),
          lastcard(
            image: 'image/dirty clothes.png',
            text: 'Dirty cloth',
            audioFile: 'assets/sounds/dirty cloth.mp3',
          ),
          lastcard(
            image: 'image/cold milk .png',
            text: 'cold milk',
            audioFile: 'assets/sounds/cold milk.mp3',
          ),
          lastcard(
            image: 'image/hot milk.png',
            text: 'Hot milk',
            audioFile: 'assets/sounds/hot milk.mp3',
          ),
          lastcard(
            image: 'image/empty-box.png',
            text: 'Empty box',
            audioFile: 'assets/sounds/empty box.mp3',
          ),
          lastcard(
            image: 'image/full box.png',
            text: 'Full box',
            audioFile: 'assets/sounds/full box.mp3',
          ),
          lastcard(
            image: 'image/love.png',
            text: 'I love you',
            audioFile: 'assets/sounds/I love you.mp3',
          ),
          lastcard(
            image: 'image/love.png',
            text: 'I love you',
            audioFile: 'assets/sounds/I love you.mp3',
          ),
          lastcard(
            image: 'image/teenager.png',
            text: 'Young',
            audioFile: 'assets/sounds/young.mp3',
          ),
          lastcard(
            image: 'image/old.png',
            text: 'Old',
            audioFile: 'assets/sounds/old.mp3',
          ),
          lastcard(
            image: 'image/red ball.png',
            text: 'Red ball ',
            audioFile: 'assets/sounds/red ball.mp3',
          ),
          lastcard(
            image: 'image/yellow ball.png',
            text: 'Yellow ball',
            audioFile: 'assets/sounds/yellow ball.mp3',
          ),
          lastcard(
            image: 'image/open door.png',
            text: 'Opened door',
            audioFile: 'assets/sounds/open door.mp3',
          ),
          lastcard(
            image: 'image/closed door.png',
            text: 'Closed door',
            audioFile: 'assets/sounds/close door.mp3',
          ),
        ],
      ),
    );
  }
}
