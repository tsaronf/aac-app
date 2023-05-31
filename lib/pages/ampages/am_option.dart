import 'package:flutter/material.dart';
import 'package:sampleproject/pages/ampages/am_animals.dart'; //temporary
import 'package:sampleproject/pages/languagepage.dart';
import 'package:sampleproject/pages/progressPage.dart';

class option extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F3F3),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'ምርጫ',
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
                  builder: (context) => languagepage(),
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
                      Text('ቋንቋ',
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
                  builder: (context) => ProgressPage(),
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
                      Text('Progress',
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
                  builder: (context) => am_animals(),
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
                      Text('Progress',
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
                  builder: (context) => am_animals(),
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
                      Text('Settings',
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
