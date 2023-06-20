import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:sampleproject/components/lastcard.dart';
import 'package:sampleproject/components/modifiedrectImageCard.dart.dart';

class activities extends StatelessWidget {
  void playAudio(String assetName) {
    AssetsAudioPlayer.newPlayer().open(Audio(assetName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "Activities",
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
            text: 'Run',
            audioFile: 'assets/sounds/falling.mp3',
          ),
          lastcard(
            image: 'image/wet-floor.png',
            text: 'Falling',
            audioFile: 'assets/sounds/falling.mp3',
          ),
          lastcard(
            image: 'image/breaking.png',
            text: 'Breaking',
            audioFile: 'assets/sounds/breaking.mp3',
          ),
          lastcard(
            image: 'image/sleep.png',
            text: 'Sleeping',
            audioFile: 'assets/sounds/sleeping.mp3',
          ),
          lastcard(
            image: 'image/morning.png',
            text: 'waking up',
            audioFile: 'assets/sounds/waking up.mp3',
          ),
          lastcard(
            image: 'image/dressing.png',
            text: 'wearing cloth',
            audioFile: 'assets/sounds/wearing cloth.mp3',
          ),
          lastcard(
            image: 'image/playtime.png',
            text: 'playing',
            audioFile: 'assets/sounds/playing.mp3',
          ),
          lastcard(
            image: 'image/triangle.png',
            text: 'Moving',
            audioFile: 'assets/sounds/moving.mp3',
          ),
          lastcard(
            image: 'image/shower.png',
            text: 'Shower',
            audioFile: 'assets/sounds/washing body.mp3',
          ),
          //replace sound
          lastcard(
            image: 'image/brushing-teeth.png',
            text: 'Brushing Teeth',
            audioFile: 'assets/sounds/brushing teeth.mp3',
          ),
          lastcard(
            image: 'image/jump.png',
            text: 'Jumping',
            audioFile: 'assets/sounds/jumping.mp3',
          ),
          lastcard(
            image: 'image/holding-hands.png',
            text: 'Holding',
            audioFile: 'assets/sounds/holding.mp3',
          ),
          // lastcard(
          //   image: 'image/comeg.gif',
          //   text: 'Coming',
          //   audioFile: 'assets/sounds/Coming.mp3',
          // ),
          // lastcard(
          //   image: 'image/went.png',
          //   text: 'To go',
          //   audioFile: 'assets/sounds/going.mp3',
          // ),
          // lastcard(
          //   image: 'image/open.png',
          //   text: 'To open',
          //   audioFile: 'assets/sounds/Opening.mp3',
          // ),
          // lastcard(
          //   image: 'image/close.png',
          //   text: 'To close',
          //   audioFile: 'assets/sounds/Closing.mp3',
          // ),
        ],
      ),
    );
  }
}
