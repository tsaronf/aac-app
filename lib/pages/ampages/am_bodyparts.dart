import 'package:flutter/material.dart';
import 'package:sampleproject/components/lastcard.dart';

class am_bodyparts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "የሰዉነት ክፍል",
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
            image: 'image/teeth.png',
            text: 'ጥርስ',
            audioFile: 'assets/sounds/Teeth-am.mp3',
          ),
          lastcard(
            image: 'image/eye.png',
            text: 'ዐይን',
            audioFile: 'assets/sounds/Eye-am.mp3',
          ),
          lastcard(
            image: 'image/nose.png',
            text: 'አፍንጫ',
            audioFile: 'assets/sounds/Nose-am.mp3',
          ),
          lastcard(
            image: 'image/back.png',
            text: 'ጀርባ',
            audioFile: 'assets/sounds/Back-am.mp3',
          ),
          lastcard(
            image: 'image/buttocks.png',
            text: 'ቂጥ',
            audioFile: 'assets/sounds/Ass-am.mp3',
          ),
          lastcard(
            image: 'image/chest.png',
            text: 'ደረት',
            audioFile: 'assets/sounds/Chest-am.mp3',
          ),
          lastcard(
            image: 'image/ear.png',
            text: 'ጆሮ',
            audioFile: 'assets/sounds/Ear-am.mp3',
          ),
          lastcard(
            image: 'image/hello.png',
            text: 'እጅ',
            audioFile: 'assets/sounds/Hand-am.mp3',
          ),
          lastcard(
            image: 'image/knee.png',
            text: 'ጉልበት',
            audioFile: 'assets/sounds/Knee-am.mp3',
          ),
          lastcard(
            image: 'image/legs.png',
            text: 'እግር',
            audioFile: 'assets/sounds/legs-am.mp3',
          ),
          lastcard(
            image: 'image/nail.png',
            text: 'ጥፍር',
            audioFile: 'assets/sounds/Nails-am.mp3',
          ),
          lastcard(
            image: 'image/open-mouth.png',
            text: 'አፍ',
            audioFile: 'assets/sounds/Cat-am.mp3',
          ),
          lastcard(
            image: 'image/stomach.png',
            text: 'ሆድ',
            audioFile: 'assets/sounds/Cat-am.mp3',
          ),
          lastcard(
            image: 'image/neck.png',
            text: 'አንገት',
            audioFile: 'assets/sounds/Neck-am.mp3',
          ),
          lastcard(
            image: 'image/tongue.png',
            text: 'ምላስ',
            audioFile: 'assets/sounds/Tongue-am.mp3',
          ),
          lastcard(
            image: 'image/hair.png',
            text: 'ፀጉር',
            audioFile: 'assets/sounds/hair-am.mp3',
          ),
          lastcard(
            image: 'image/head.png',
            text: 'ጭንቅላት',
            audioFile: 'assets/sounds/Cat-am.mp3',
          ),
        ],
      ),
    );
  }
}
