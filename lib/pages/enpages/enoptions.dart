import 'package:flutter/material.dart';
import 'package:sampleproject/pages/enpages/localdata/add_local_data.dart';
import 'package:sampleproject/pages/languagepage.dart';
import 'package:sampleproject/pages/enprogressPage.dart';

class enoptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F3F3),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          'Options',
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
            child: SizedBox(
              height: 100.0,
              child: Card(
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 25.0),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: <Widget>[
                      Text('Language',
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
                  builder: (context) => enprogressPage(),
                ),
              );
            },
            child: SizedBox(
              height: 100.0,
              child: Card(
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 25.0),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: <Widget>[
                      Text('Usage',
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
                  builder: (context) => const AddLocalData(),
                ),
              );
            },
            child: SizedBox(
              height: 100.0,
              child: Card(
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 25.0),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: <Widget>[
                      Text('Add data',
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
