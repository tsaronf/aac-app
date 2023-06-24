import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:sampleproject/pages/ampages/am_activities.dart';
import 'package:sampleproject/pages/ampages/am_animals.dart';

class BottomNavCard extends StatelessWidget {
  const BottomNavCard(
      {super.key,
      required this.page,
      required this.image,
      required this.text,
      required this.isFav,
      required this.machineName,
      required this.favCallback,
      required this.progressCallback,
      required this.playAudioCallback});

  final Widget page;
  final String image;
  final String text;
  final String machineName;
  final int isFav;
  final Function favCallback;
  final Function progressCallback;
  final Function playAudioCallback;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
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
          Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MaterialButton(
                  onPressed: () {
                    // Call the favCallback function to handle the "Make Favorite" action
                    favCallback(text, isFav);
                  },
                  child: Container(
                    // margin: EdgeInsets.all(8.0),
                    height: 10.0,
                    width: 10.0,
                    // margin: EdgeInsets.all(8.0),
                    child: isFav == 0
                        ? const Icon(
                            Icons.favorite_border,
                            color: Colors.grey,
                          )
                        : const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Flexible(
            flex: 3,
            child: MaterialButton(
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
                  Flexible(
                    child: Image.asset(
                      'image/$image.png',

                      height: 70.0,
                      width: 90.0, // set the height of the image
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  Flexible(
                    // flex: 2,
                    child: Center(
                      child: Text(
                        text,
                        style: const TextStyle(
                          fontFamily: 'S S P',
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
