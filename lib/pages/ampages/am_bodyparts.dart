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
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/eye.png',
            text: 'ዐይን',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/nose.png',
            text: 'አፍንጫ',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/back.png',
            text: 'ጀርባ',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/buttocks.png',
            text: 'ቂጥ',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/chest.png',
            text: 'ደረት',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/ear.png',
            text: 'ጆሮ',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/hello.png',
            text: 'እጅ',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/knee.png',
            text: 'ጉልበት',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/legs.png',
            text: 'እግር',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/nail.png',
            text: 'ጥፍር',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/open-mouth.png',
            text: 'አፍ',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/stomach.png',
            text: 'ሆድ',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/neck.png',
            text: 'አንገት',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/tongue.png',
            text: 'ምላስ',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/hair.png',
            text: 'ፀጉር',
            // audioFile: 'voice/Black.ogg',
          ),
          lastcard(
            image: 'image/head.png',
            text: 'ጭንቅላት',
            // audioFile: 'voice/Black.ogg',
          ),
        ],
      ),
    );
  }
}
