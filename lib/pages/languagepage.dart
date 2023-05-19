import 'package:flutter/material.dart';
import 'package:sampleproject/pages/enpages/enhomePage.dart'; //temporary
import 'package:sampleproject/pages/homepage.dart';

class languagepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F3F3),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'Language Selection',
          style: TextStyle(
            fontFamily: 'Source Sans Pro',
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              // AssetsAudioPlayer.newPlayer()
              //     .open(Audio('assets/sounds/tap.wav'));
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => homePage(),
                ),
              );
            },
            child: Container(
              height: 100.0,
              child: Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    children: <Widget>[
                      Text('አማርኛ',
                          style: TextStyle(
                            color: Colors.teal.shade800,
                            fontFamily: 'Source',
                            fontSize: 25.0,
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // AssetsAudioPlayer.newPlayer()
              //     .open(Audio('assets/sounds/tap.wav'));
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => enhomePage(),
                ),
              );
            },
            child: Container(
              height: 100.0,
              child: Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    children: <Widget>[
                      Text('English',
                          style: TextStyle(
                            color: Colors.teal.shade800,
                            fontFamily: 'Source',
                            fontSize: 25.0,
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
