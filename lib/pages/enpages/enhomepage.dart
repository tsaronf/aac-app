import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sampleproject/pages/enpages/enanimals.dart';
import 'package:sampleproject/pages/enpages/enoptions.dart';
import 'package:sampleproject/pages/enpages/enbodyParts.dart';
import 'package:sampleproject/pages/enpages/enfeelings.dart';
import 'package:sampleproject/pages/enpages/encolors.dart';
import 'package:sampleproject/pages/enpages/enactivities.dart';

class enhomePage extends StatelessWidget {
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
                        builder: (context) => enanimals(),
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
                        'Animals',
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
                        builder: (context) => enanimals(),
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
                        'Foods',
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
                          builder: (context) => enbodyParts(),
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
                          'Body',
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
                      'Family',
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
                        builder: (context) => enactivities(),
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
                        'Activities',
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
                        builder: (context) => encolors(),
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
                        'Colours',
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
                      'Direction',
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
                      'Materials',
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
                        builder: (context) => enfeelings(),
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
                        'Feelings',
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
                builder: (context) => enoptions(),
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
