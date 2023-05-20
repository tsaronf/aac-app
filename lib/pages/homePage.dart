import 'package:flutter/material.dart';
import 'package:sampleproject/pages/animals.dart';
import 'package:sampleproject/pages/option.dart';
import 'package:sampleproject/pages/bodyparts.dart';
import 'package:sampleproject/pages/feelings.dart';
import 'package:sampleproject/pages/color.dart';
import 'package:sampleproject/pages/activities.dart';
import 'package:sampleproject/pages/animation.dart';
import 'package:sampleproject/components/bottomNavCard.dart';
import 'package:sampleproject/database_helper.dart';

class homePage extends StatefulWidget {
  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  final dbHelper = DatabaseHelper();
  List<Map> categoryList = [];

  @override
  void initState() {
    super.initState();
    _loadProgress();
  }

  void _loadProgress() async {
    List<Map> categories = await dbHelper.getCategories("progress");

    setState(() {
      categoryList = categories;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar:
      // bottomNavigationBar: Container(
      //   padding: EdgeInsets.all(16),
      //   child: SingleChildScrollView(
      //     scrollDirection: Axis.horizontal,
      //     child: Row(
      //       children: [

      //     SizedBox(
      //       height: 20,
      //     ),
      //         BottomNavCard(page: animals(),),
      //         const SizedBox(width: 16.0),
      //         Container(
      //           height: 180,
      //           width: 150,
      //           decoration: BoxDecoration(
      //             gradient: LinearGradient(
      //               colors: [
      //                 Color.fromARGB(255, 250, 250, 251),
      //                 Color.fromRGBO(245, 247, 245, 1)
      //               ],
      //               begin: Alignment.topLeft,
      //               end: Alignment.bottomRight,
      //             ),
      //             borderRadius: BorderRadius.circular(20),
      //           ),
      //           child: MaterialButton(
      //             onPressed: () {
      //               Navigator.push(
      //                 context,
      //                 MaterialPageRoute(
      //                   builder: (context) => animals(),
      //                 ),
      //               );
      //             },
      //             child: Column(
      //               children: <Widget>[
      //                 Spacer(),
      //                 Image.asset(
      //                   "image/dinner.png",

      //                   height: 100.0,
      //                   width: 100.0, // set the height of the image
      //                 ),
      //                 SizedBox(height: 8.0),
      //                 Text(
      //                   'ምግብ',
      //                   style: TextStyle(
      //                     fontFamily: 'Pacifico',
      //                     fontWeight: FontWeight.normal,
      //                     fontSize: 25.0,
      //                     color: Colors.black,
      //                   ),
      //                 )
      //               ],
      //             ),
      //           ),
      //         ),
      //         SizedBox(width: 16),
      //         Container(
      //             height: 180,
      //             width: 150,
      //             decoration: BoxDecoration(
      //               gradient: LinearGradient(
      //                 colors: [
      //                   Color.fromARGB(255, 250, 250, 251),
      //                   Color.fromRGBO(245, 247, 245, 1)
      //                 ],
      //                 begin: Alignment.topLeft,
      //                 end: Alignment.bottomRight,
      //               ),
      //               borderRadius: BorderRadius.circular(20),
      //             ),
      //             child: MaterialButton(
      //               onPressed: () {
      //                 Navigator.push(
      //                   context,
      //                   MaterialPageRoute(
      //                     builder: (context) => bodyparts(),
      //                   ),
      //                 );
      //               },
      //               child: Column(
      //                 children: <Widget>[
      //                   Spacer(),
      //                   Image.asset(
      //                     "image/humanoid.png",

      //                     height: 100.0,
      //                     width: 100.0, // set the height of the image
      //                   ),
      //                   SizedBox(height: 0.5),
      //                   Text(
      //                     'የሰዉነት ክፍል',
      //                     style: TextStyle(
      //                       fontFamily: 'Pacifico',
      //                       fontWeight: FontWeight.normal,
      //                       fontSize: 25.0,
      //                       color: Colors.black,
      //                     ),
      //                   )
      //                 ],
      //               ),
      //             )),
      //         SizedBox(width: 16),
      //         Container(
      //           height: 180,
      //           width: 150,
      //           decoration: BoxDecoration(
      //             gradient: LinearGradient(
      //               colors: [
      //                 Color.fromARGB(255, 250, 250, 251),
      //                 Color.fromRGBO(245, 247, 245, 1)
      //               ],
      //               begin: Alignment.topLeft,
      //               end: Alignment.bottomRight,
      //             ),
      //             borderRadius: BorderRadius.circular(20),
      //           ),
      //           child: Column(
      //             children: <Widget>[
      //               Spacer(),
      //               Image.asset(
      //                 "image/family.png",

      //                 height: 100.0,
      //                 width: 100.0, // set the height of the image
      //               ),
      //               SizedBox(height: 0.5),
      //               Text(
      //                 'ቤተሰብ አባላት',
      //                 style: TextStyle(
      //                   fontFamily: 'Pacifico',
      //                   fontWeight: FontWeight.normal,
      //                   fontSize: 25.0,
      //                   color: Colors.black,
      //                 ),
      //               )
      //             ],
      //           ),
      //         ),
      //         SizedBox(width: 16),
      //         Container(
      //           height: 180,
      //           width: 150,
      //           decoration: BoxDecoration(
      //             gradient: LinearGradient(
      //               colors: [
      //                 Color.fromARGB(255, 250, 250, 251),
      //                 Color.fromRGBO(245, 247, 245, 1)
      //               ],
      //               begin: Alignment.topLeft,
      //               end: Alignment.bottomRight,
      //             ),
      //             borderRadius: BorderRadius.circular(20),
      //           ),
      //           child: MaterialButton(
      //             onPressed: () {
      //               Navigator.push(
      //                 context,
      //                 MaterialPageRoute(
      //                   builder: (context) => activities(),
      //                 ),
      //               );
      //             },
      //             child: Column(
      //               children: <Widget>[
      //                 Spacer(),
      //                 Image.asset(
      //                   "image/mental-health.png",

      //                   height: 100.0,
      //                   width: 100.0, // set the height of the image
      //                 ),
      //                 SizedBox(height: 8.0),
      //                 Text(
      //                   'ድርጊት',
      //                   style: TextStyle(
      //                     fontFamily: 'Pacifico',
      //                     fontWeight: FontWeight.normal,
      //                     fontSize: 25.0,
      //                     color: Colors.black,
      //                   ),
      //                 )
      //               ],
      //             ),
      //           ),
      //         ),
      //         SizedBox(width: 16),
      //         Container(
      //           height: 180,
      //           width: 150,
      //           decoration: BoxDecoration(
      //             gradient: LinearGradient(
      //               colors: [
      //                 Color.fromARGB(255, 250, 250, 251),
      //                 Color.fromRGBO(245, 247, 245, 1)
      //               ],
      //               begin: Alignment.topLeft,
      //               end: Alignment.bottomRight,
      //             ),
      //             borderRadius: BorderRadius.circular(20),
      //           ),
      //           child: MaterialButton(
      //             onPressed: () {
      //               Navigator.push(
      //                 context,
      //                 MaterialPageRoute(
      //                   builder: (context) => color(),
      //                 ),
      //               );
      //             },
      //             child: Column(
      //               children: <Widget>[
      //                 Spacer(),
      //                 Image.asset(
      //                   "image/colour.png",

      //                   height: 100.0,
      //                   width: 100.0, // set the height of the image
      //                 ),
      //                 SizedBox(height: 8.0),
      //                 Text(
      //                   'ቀለማት',
      //                   style: TextStyle(
      //                     fontFamily: 'Pacifico',
      //                     fontWeight: FontWeight.normal,
      //                     fontSize: 25.0,
      //                     color: Colors.black,
      //                   ),
      //                 )
      //               ],
      //             ),
      //           ),
      //         ),
      //         SizedBox(width: 16),
      //         Container(
      //           height: 180,
      //           width: 150,
      //           decoration: BoxDecoration(
      //             gradient: LinearGradient(
      //               colors: [
      //                 Color.fromARGB(255, 250, 250, 251),
      //                 Color.fromRGBO(245, 247, 245, 1)
      //               ],
      //               begin: Alignment.topLeft,
      //               end: Alignment.bottomRight,
      //             ),
      //             borderRadius: BorderRadius.circular(20),
      //           ),
      //           child: Column(
      //             children: <Widget>[
      //               Spacer(),
      //               Image.asset(
      //                 "image/colour.png",

      //                 height: 100.0,
      //                 width: 100.0, // set the height of the image
      //               ),
      //               SizedBox(height: 8.0),
      //               Text(
      //                 'ትዕዛዛት',
      //                 style: TextStyle(
      //                   fontFamily: 'Pacifico',
      //                   fontWeight: FontWeight.normal,
      //                   fontSize: 25.0,
      //                   color: Colors.black,
      //                 ),
      //               )
      //             ],
      //           ),
      //         ),
      //         SizedBox(width: 16),
      //         Container(
      //           height: 180,
      //           width: 150,
      //           decoration: BoxDecoration(
      //             gradient: LinearGradient(
      //               colors: [
      //                 Color.fromARGB(255, 250, 250, 251),
      //                 Color.fromRGBO(245, 247, 245, 1)
      //               ],
      //               begin: Alignment.topLeft,
      //               end: Alignment.bottomRight,
      //             ),
      //             borderRadius: BorderRadius.circular(20),
      //           ),
      //           child: Column(
      //             children: <Widget>[
      //               Spacer(),
      //               Image.asset(
      //                 "image/box.png",

      //                 height: 100.0,
      //                 width: 100.0, // set the height of the image
      //               ),
      //               SizedBox(height: 8.0),
      //               Text(
      //                 'ቁሳቁስ',
      //                 style: TextStyle(
      //                   fontFamily: 'Pacifico',
      //                   fontWeight: FontWeight.normal,
      //                   fontSize: 25.0,
      //                   color: Colors.black,
      //                 ),
      //               )
      //             ],
      //           ),
      //         ),
      //         SizedBox(width: 16),
      //         Container(
      //           height: 180,
      //           width: 150,
      //           decoration: BoxDecoration(
      //             gradient: LinearGradient(
      //               colors: [
      //                 Color.fromARGB(255, 250, 250, 251),
      //                 Color.fromRGBO(245, 247, 245, 1)
      //               ],
      //               begin: Alignment.topLeft,
      //               end: Alignment.bottomRight,
      //             ),
      //             borderRadius: BorderRadius.circular(20),
      //           ),
      //           child: MaterialButton(
      //             onPressed: () {
      //               Navigator.push(
      //                 context,
      //                 MaterialPageRoute(
      //                   builder: (context) => animation(),
      //                 ),
      //               );
      //             },
      //             child: Column(
      //               children: <Widget>[
      //                 Spacer(),
      //                 Image.asset(
      //                   "image/mental-health.png",

      //                   height: 100.0,
      //                   width: 100.0, // set the height of the image
      //                 ),
      //                 SizedBox(height: 8.0),
      //                 Text(
      //                   'ድር',
      //                   style: TextStyle(
      //                     fontFamily: 'Pacifico',
      //                     fontWeight: FontWeight.normal,
      //                     fontSize: 25.0,
      //                     color: Colors.black,
      //                   ),
      //                 )
      //               ],
      //             ),
      //           ),
      //         ),
      //         SizedBox(width: 16),
      //         Container(
      //           height: 180,
      //           width: 150,
      //           decoration: BoxDecoration(
      //             gradient: LinearGradient(
      //               colors: [
      //                 Color.fromARGB(255, 250, 250, 251),
      //                 Color.fromRGBO(245, 247, 245, 1)
      //               ],
      //               begin: Alignment.topLeft,
      //               end: Alignment.bottomRight,
      //             ),
      //             borderRadius: BorderRadius.circular(20),
      //           ),
      //           child: MaterialButton(
      //             onPressed: () {
      //               Navigator.push(
      //                 context,
      //                 MaterialPageRoute(
      //                   builder: (context) => feelings(),
      //                 ),
      //               );
      //             },
      //             child: Column(
      //               children: <Widget>[
      //                 Spacer(),
      //                 Image.asset(
      //                   "image/emotion.png",

      //                   height: 100.0,
      //                   width: 100.0, // set the height of the image
      //                 ),
      //                 SizedBox(height: 8.0),
      //                 Text(
      //                   'ስሜት',
      //                   style: TextStyle(
      //                     fontFamily: 'Pacifico',
      //                     fontWeight: FontWeight.normal,
      //                     fontSize: 25.0,
      //                     color: Colors.black,
      //                   ),
      //                 )
      //               ],
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),

      // ),

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
      body: Container(
        height: 200, // Adjust the height as per your requirement
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: categoryList.map((item) {
            return Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                width: 150, // Adjust the width as per your requirement
                color: Colors.grey[300],
                child: BottomNavCard(page : 'animals')
              ),
            );
          }).toList(),
        ),
      ),
    );
    // Row(
    //     children: [
    //       SingleChildScrollView(
    //         scrollDirection: Axis.horizontal,
    //         child: Container(
    //           height: 150,
    //           width : 400, 
    //           child: ListView.builder(
    //             scrollDirection: Axis.horizontal,
    //             itemCount: categoryList.length,
    //             itemBuilder: (BuildContext context, int index) {
    //               String categoryName = categoryList[index]['favCategoryName'];
    //               String machineName = categoryList[index]['machineName'];
    //               return ListTile(
    //                 title: Text(categoryName),
    //                 subtitle: Text(machineName),
    //               );
    //             },
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
