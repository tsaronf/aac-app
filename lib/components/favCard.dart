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
      height: 300,
      width: 350,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
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
          const Spacer(),
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

                  height: 90.0,
                  width: 300.0, // set the height of the image
                ),
                const SizedBox(height: 4.0),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    text,
                    style: const TextStyle(
                      fontFamily: 'S S P',
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
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
