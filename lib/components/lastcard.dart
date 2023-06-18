import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
// import 'package:assets_audio_player/assets_audio_player.dart';

class lastcard extends StatelessWidget {
  lastcard({
    required this.image,
    required this.text,
  required this.audioFile
  });
  final String audioFile;
  final String image;
  final String text;
  // final String audioFile;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AssetsAudioPlayer.newPlayer().open(Audio(audioFile));
      },
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
          ),
          child: Card(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(image),
                fit: BoxFit.scaleDown,
                height: 70.0,
                width: 80.0,
              ),
              SizedBox(height: 6),
              Text(
                text,
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontWeight: FontWeight.normal,
                  fontSize: 25.0,
                  color: Colors.black,
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
