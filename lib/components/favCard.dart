import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:sampleproject/pages/ampages/am_activities.dart';
import 'package:sampleproject/pages/ampages/am_animals.dart';

class FavCard extends StatelessWidget {
  const FavCard(
      {super.key,
      required this.page,
      required this.image,
      required this.text,
      required this.machineName,
      required this.progressCallback,
      required this.playAudioCallback});

  final Widget page;
  final String image;
  final String text;
  final String machineName;
  final Function progressCallback;
  final Function playAudioCallback;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 150,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 250, 250, 251),
            Color.fromRGBO(245, 247, 245, 1)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: <Widget>[
          
          Spacer(),
          MaterialButton(
            onPressed: () async {
              progressCallback(text);
              playAudioCallback(machineName);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => page,
                ),
              );
            },
            child: Column(
              children: [
                Image.asset(
                  'image/$image.png',

                  height: 100.0,
                  width: 100.0, // set the height of the image
                ),
                SizedBox(height: 8.0),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    text,
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.normal,
                      fontSize: 15.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
