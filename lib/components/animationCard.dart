import 'package:flutter/material.dart';

class animationCard extends StatelessWidget {
  animationCard({
    required this.image,
    required this.text,
  });

  //final String audioFile;
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // AssetsAudioPlayer.newPlayer().open(Audio(audioFile));
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
                height: 300.0,
                width: 300.0,
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
