import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sampleproject/pages/ampages/am_animals.dart';
import 'package:sampleproject/pages/ampages/am_option.dart';
import 'package:sampleproject/pages/ampages/am_bodyparts.dart';
import 'package:sampleproject/pages/ampages/am_feelings.dart';
import 'package:sampleproject/pages/ampages/am_color.dart';
import 'package:sampleproject/pages/ampages/am_activities.dart';
import 'package:sampleproject/pages/ampages/am_foods.dart';

// import 'package:sampleproject/pages/animation.dart';
import 'package:sampleproject/components/bottomNavCard.dart';
import 'package:sampleproject/database_helper.dart';

class homePage extends StatefulWidget {
  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  final dbHelper = DatabaseHelper();
  //amahric : am_progress
  //english: progress
  final dbType = "am_progress";
  List<Map> categoryList = [];
  List<Map> favCategories = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadProgress();
  }

  void _loadProgress() async {
    List<Map> categories = await dbHelper.getCategories(dbType);
    List<Map> favs = await dbHelper.getFavoriteCategories(dbType);

    setState(() {
      categoryList = categories;
      favCategories = favs;
    });
  }

  void toggleFav(String categoryName, int isFav) async {
    var res;
    if (isFav == 0) {
      res = await dbHelper.insertCategory(dbType, categoryName);
    } else if (isFav == 1) {
      res = await dbHelper.removeFav(dbType, categoryName);
    }
    if (res == 1) {
      _loadProgress();
    }
  }

  void registerProgress(String categoryName) async {
    String timestamp = DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
    var res = await dbHelper.saveProgress(dbType, categoryName, timestamp);
    _loadProgress();
  }

  void playAudio(String machineName) {
    AssetsAudioPlayer.newPlayer().open(Audio('assets/sounds/$machineName.mp3'));
  }

  Widget _getPageByName(String pageName) {
    // Map the provided widget name to the actual widget class
    switch (pageName) {
      case 'am_animals':
        return am_animals();

      case 'am_activities':
        return am_activities();
      case 'am_bodyparts':
        return am_bodyparts();
      case 'am_color':
        return am_color();
      case 'am_feelings':
        return am_feelings();
      case 'am_foods':
        return am_foods();
      // Add more cases for each page you want to navigate to
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        // padding: EdgeInsets.all(16),
        height: 200, // Adjust the height as per your requirement
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: categoryList.map((item) {
            return Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                width: 150, // Adjust the width as per your requirement
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                ),
                // color: Color.fromARGB(255, 222, 92, 92),
                child:
                    // change based on lanaguage
                    BottomNavCard(
                        page: _getPageByName(item['am_machineName']),
                        image: item['am_image'],
                        text: item['am_favCategoryName'],
                        machineName: item['am_machineName'],
                        isFav: item['am_isFav'],
                        favCallback: toggleFav,
                        progressCallback: registerProgress,
                        playAudioCallback: playAudio),
              ),
            );
          }).toList(),
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
              Icons.games_outlined,
              size: 30.0,
            ),
            onPressed: () {},
            // Handle fourth button press
          ),
        ],
      ),

      // body: GridView.count(
      //   crossAxisCount: 2,
      //   padding: EdgeInsets.all(5),
      //   crossAxisSpacing: 5,
      //   mainAxisSpacing: 5,
      //    children: favCategories.map((item) {
      //           return Padding(
      //             padding: EdgeInsets.all(8.0),
      //             child: Container(
      //                 width: 150, // Adjust the width as per your requirement
      //                 color: Colors.grey[300],
      //                 // change based on lanaguage
      //                 child: Text(item['am_favCategoryName'])),
      //           );
      //         })
      // // ),

      body: SafeArea(
        child: Column(
          children: [
            // Fav List TODO
            Padding(
              padding: EdgeInsets.all(16.0), // Add padding around the GridView
              child: Container(
                height: 380,
                width: 380,
                // Adjust the height as per your requirement
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:
                        2, // Adjust the cross axis count as per your requirement
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                    childAspectRatio:
                        1.0, // Set the width-to-height ratio for uniform width
                  ),
                  itemCount:
                      favCategories.length + 1, // Add 1 for the additional card
                  itemBuilder: (BuildContext context, int index) {
                    if (index < favCategories.length) {
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 2.0,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey[300],
                          ),
                          child: Center(
                            child: Text(
                                favCategories[index]['am_favCategoryName']),
                          ),
                        ),
                      );
                    } else {
                      // Additional card to fill the remaining space
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 2.0,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey[300],
                          ),
                          // Customize the content of the additional card here
                          child: Center(
                            child: Text('Additional Card'),
                          ),
                        ),
                      );
                    }
                  },
                ),
              ),
            ),
            // Bottom navigation
            SizedBox(height: 2),
            // Padding(
            //   padding: EdgeInsets.all(16.0),
            //   child: Card(
            //     child: Padding(
            //       padding: EdgeInsets.all(16.0),
            //       child: Text('Card Outside GridView'),
            //     ),
            //   ),
            // ),

            // Card outside GridView
            Padding(
              padding: EdgeInsets.all(6.0),
              child: GestureDetector(
                onTap: () {
                  // Perform navigation to the desired page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          am_animals(), // Replace with the desired page widget
                    ),
                  );
                },
                child: Container(
                  height: 150,
                  width: 380,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Card(
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Card Outside GridView',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // SizedBox(height: 2),
          ],
        ),
      ),
    );
  }
}
