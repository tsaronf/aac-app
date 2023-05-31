import 'package:sampleproject/components/modifiedrectImageCard.dart.dart';
import 'package:sampleproject/database_helper.dart';
import 'package:flutter/material.dart';

import 'package:assets_audio_player/assets_audio_player.dart';
class ModifiedEnGreeting extends StatefulWidget {
 
  @override
  State<ModifiedEnGreeting> createState() => _ModifiedEnGreetingState();
}

class _ModifiedEnGreetingState extends State<ModifiedEnGreeting> {
  final String categoryName = 'Greeting3';
  final dbHelper = DatabaseHelper();

  void _handleButtonPressed(String assetName) async {
    String timestamp = DateTime.now().toString();
    //english : progress
    //amharic : am_progress
    await dbHelper.saveProgress('progress', categoryName, timestamp);
    AssetsAudioPlayer.newPlayer().open(Audio("assets/sounds/$assetName"));
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "Greetings Modified",
          style: TextStyle(
            fontFamily: 'Source Sans Pro',
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Color(0xFFF3F3F3),
      body: ListView(
        children: <Widget>[
          ElevatedButton(
            onPressed: () => _handleButtonPressed('enGreetings01'),
            child:  ModRectImageCard(
            image: 'assets/images/enGreetings01.png'
          ),
          ),
         ElevatedButton(
            onPressed: () => _handleButtonPressed('enGreetings02'),
            child: ModRectImageCard(
              image: 'assets/images/enGreetings02.png',
            ),
          ),
          ElevatedButton(
            onPressed: () => _handleButtonPressed('enGreetings03'),
            child: ModRectImageCard(
              image: 'assets/images/enGreetings03.png',
            ),
          ),
          ElevatedButton(
            onPressed: () => _handleButtonPressed('enGreetings04'),
            child: ModRectImageCard(
              image: 'assets/images/enGreetings04.png',
            ),
          ),
          ElevatedButton(
            onPressed: () => _handleButtonPressed('enGreetings05'),
            child: ModRectImageCard(
              image: 'assets/images/enGreetings05.png',
            ),
          ),
          ElevatedButton(
            onPressed: () => _handleButtonPressed('enGreetings06'),
            child: ModRectImageCard(
              image: 'assets/images/enGreetings06.png',
            ),
          ),
          
        ],
      ),
    );
  }
}
