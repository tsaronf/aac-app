import 'package:sampleproject/pages/homePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(AacApp());

class AacApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]); //portrait mode always

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );


    
  }
}
