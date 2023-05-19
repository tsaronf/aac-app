import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sampleproject/pages/animals.dart';
import 'package:sampleproject/pages/option.dart';
import 'package:sampleproject/pages/bodyparts.dart';
import 'package:sampleproject/pages/feelings.dart';
import 'package:sampleproject/pages/color.dart';
import 'package:sampleproject/pages/activities.dart';
import 'package:sampleproject/pages/animation.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
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
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => animals(),
                      ),
                    );
                  },
                  child: Column(
                    children: <Widget>[
                      Spacer(),
                      Image.asset(
                        "image/dog.png",

                        height: 100.0,
                        width: 100.0, // set the height of the image
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'እንስሳ',
                        style: TextStyle(
                          fontFamily: 'Pacifico',
                          fontWeight: FontWeight.normal,
                          fontSize: 25.0,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 16.0),
              Container(
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
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => animals(),
                      ),
                    );
                  },
                  child: Column(
                    children: <Widget>[
                      Spacer(),
                      Image.asset(
                        "image/dinner.png",

                        height: 100.0,
                        width: 100.0, // set the height of the image
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'ምግብ',
                        style: TextStyle(
                          fontFamily: 'Pacifico',
                          fontWeight: FontWeight.normal,
                          fontSize: 25.0,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(width: 16),
              Container(
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
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => bodyparts(),
                        ),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        Spacer(),
                        Image.asset(
                          "image/humanoid.png",

                          height: 100.0,
                          width: 100.0, // set the height of the image
                        ),
                        SizedBox(height: 0.5),
                        Text(
                          'የሰዉነት ክፍል',
                          style: TextStyle(
                            fontFamily: 'Pacifico',
                            fontWeight: FontWeight.normal,
                            fontSize: 25.0,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  )),
              SizedBox(width: 16),
              Container(
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
                    Image.asset(
                      "image/family.png",

                      height: 100.0,
                      width: 100.0, // set the height of the image
                    ),
                    SizedBox(height: 0.5),
                    Text(
                      'ቤተሰብ አባላት',
                      style: TextStyle(
                        fontFamily: 'Pacifico',
                        fontWeight: FontWeight.normal,
                        fontSize: 25.0,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: 16),
              Container(
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
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => activities(),
                      ),
                    );
                  },
                  child: Column(
                    children: <Widget>[
                      Spacer(),
                      Image.asset(
                        "image/mental-health.png",

                        height: 100.0,
                        width: 100.0, // set the height of the image
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'ድርጊት',
                        style: TextStyle(
                          fontFamily: 'Pacifico',
                          fontWeight: FontWeight.normal,
                          fontSize: 25.0,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(width: 16),
              Container(
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
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => color(),
                      ),
                    );
                  },
                  child: Column(
                    children: <Widget>[
                      Spacer(),
                      Image.asset(
                        "image/colour.png",

                        height: 100.0,
                        width: 100.0, // set the height of the image
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'ቀለማት',
                        style: TextStyle(
                          fontFamily: 'Pacifico',
                          fontWeight: FontWeight.normal,
                          fontSize: 25.0,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(width: 16),
              Container(
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
                    Image.asset(
                      "image/colour.png",

                      height: 100.0,
                      width: 100.0, // set the height of the image
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'ትዕዛዛት',
                      style: TextStyle(
                        fontFamily: 'Pacifico',
                        fontWeight: FontWeight.normal,
                        fontSize: 25.0,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: 16),
              Container(
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
                    Image.asset(
                      "image/box.png",

                      height: 100.0,
                      width: 100.0, // set the height of the image
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'ቁሳቁስ',
                      style: TextStyle(
                        fontFamily: 'Pacifico',
                        fontWeight: FontWeight.normal,
                        fontSize: 25.0,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: 16),
              Container(
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
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => animation(),
                      ),
                    );
                  },
                  child: Column(
                    children: <Widget>[
                      Spacer(),
                      Image.asset(
                        "image/mental-health.png",

                        height: 100.0,
                        width: 100.0, // set the height of the image
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'ድር',
                        style: TextStyle(
                          fontFamily: 'Pacifico',
                          fontWeight: FontWeight.normal,
                          fontSize: 25.0,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(width: 16),
              Container(
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
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => feelings(),
                      ),
                    );
                  },
                  child: Column(
                    children: <Widget>[
                      Spacer(),
                      Image.asset(
                        "image/emotion.png",

                        height: 100.0,
                        width: 100.0, // set the height of the image
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'ስሜት',
                        style: TextStyle(
                          fontFamily: 'Pacifico',
                          fontWeight: FontWeight.normal,
                          fontSize: 25.0,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 192, 168, 236),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 160, 118, 238),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => option(),
              ),
            );
          },
        ),
        title: Text("AAC"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.music_note_sharp,
              size: 30.0,
            ),
            onPressed: () {},
            // Handle fourth button press
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 600.0,
          ),
        ],
      ),
    );
  }
}
