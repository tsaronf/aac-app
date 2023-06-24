import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:sampleproject/components/lastcard.dart';
import 'package:sampleproject/components/modifiedrectImageCard.dart.dart';

class am_activities extends StatelessWidget {
  void playAudio(String assetName) {
    AssetsAudioPlayer.newPlayer().open(Audio(assetName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "ድርጊት",
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
          //replace sound
          lastcard(
            image: 'image/run.png',
            text: 'መሮጥ',
            audioFile: 'assets/sounds/run-am.mp3',
          ),
          lastcard(
            image: 'image/wet-floor.png',
            text: 'መዉደቅ',
            audioFile: 'assets/sounds/Fall-am.mp3',
          ),
          lastcard(
            image: 'image/breaking.png',
            text: 'ሰበር',
            audioFile: 'assets/sounds/Break-am.mp3',
          ),
          lastcard(
            image: 'image/sleep.png',
            text: 'መተኛት',
            audioFile: 'assets/sounds/sleep-am.mp3',
          ),
          lastcard(
            image: 'image/morning.png',
            text: 'መንቃት',
            audioFile: 'assets/sounds/wake up-am.mp3',
          ),
          lastcard(
            image: 'image/dressing.png',
            text: 'መልበስ',
            audioFile: 'assets/sounds/dress up-am.mp3',
          ),
          lastcard(
            image: 'image/playtime.png',
            text: 'መጫወት',
            audioFile: 'assets/sounds/Play-am.mp3',
          ),
          lastcard(
            image: 'image/triangle.png',
            text: 'መንቀሳቀስ',
            audioFile: 'assets/sounds/MoveAround-am.mp3',
          ),
          lastcard(
            image: 'image/shower.png',
            text: 'ገላ መታጠብ',
            audioFile: 'assets/sounds/washingbody-am.mp3',
          ),
          //replace sound
          lastcard(
            image: 'image/brushing-teeth.png',
            text: 'ጥርስ መቦረሽ',
            audioFile: 'assets/sounds/brushing your teeth-am.mp3',
          ),
          lastcard(
            image: 'image/jump.png',
            text: 'መዝለል',
            audioFile: 'assets/sounds/Jump-am.mp3',
          ),
          lastcard(
            image: 'image/holding-hands.png',
            text: 'መያዝ',
            audioFile: 'assets/sounds/hold-am.mp3',
          ),
          lastcard(
            image: 'image/came.png',
            text: 'መምጣት',
            audioFile: 'assets/sounds/come-am.mp3',
          ),
          lastcard(
            image: 'image/went.png',
            text: 'መሄድ',
            audioFile: 'assets/sounds/go-am.mp3',
          ),
          
        ],
      ),
    );
  }
}
