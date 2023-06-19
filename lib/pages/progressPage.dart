import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sampleproject/database_helper.dart';

class ProgressPage extends StatefulWidget {
  @override
  _ProgressPageState createState() => _ProgressPageState();
}

class _ProgressPageState extends State<ProgressPage> {
  final dbHelper = DatabaseHelper();
  final dbType = "am_progress";
  List<Map> progressList = [];
  List<Map> mostActiveCategories = [];
  List<Map> topCategories = [];
  List<Map> mostActiveDays = [];


  @override
  void initState() {
    super.initState();
    _loadProgress();
  }

  void _loadProgress() async {
    //english : progress
    //amharic : am_progress
    List<Map> list = await dbHelper.getProgress(dbType);
    List<Map> categories = await dbHelper.getMostActiveCategories(dbType);
    // List<Map> favs = await dbHelper.getCategories(dbType);
    List<Map> days = await dbHelper.getMostActiveDayofTheWeek(dbType);


    setState(() {
      progressList = list;

      mostActiveDays = days;
      mostActiveCategories = categories;
    });
  }

  String getDayofWeek(Object? day) {
    String dayOfTheWeek = '';
    switch (day) {
      case "0":
        {
          dayOfTheWeek = 'እሁድ';
        }
        break;

      case "1":
        {
          dayOfTheWeek = 'ሰኞ';
        }
        break;
      case "2":
        {
          dayOfTheWeek = 'ማክሰኞ';
        }
        break;

      case "3":
        {
          dayOfTheWeek = 'እሮብ';
        }
        break;
      case "4":
        {
          dayOfTheWeek = 'ሐሙስ';
        }
        break;

      case "5":
        {
          dayOfTheWeek = 'አርብ';
        }
        break;
      case "6":
        {
          dayOfTheWeek = 'ቅዳሜ';
        }
        break;

      default:
        {
          //statements;
        }
        break;
    }
    return dayOfTheWeek;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('የአጠቃቀም ትራክ'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                "ከፍተኛ 3 ንቁ ምድቦች",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                itemCount: mostActiveCategories.length,
                itemBuilder: (BuildContext context, int index) {
                  String categoryName =
                      mostActiveCategories[index]['am_categoryName'];
                  Widget categoryImage = Image.asset(
                   'image/favimg.jpg',
                    width: 40,
                    height: 40,
                  );

                  return Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: categoryImage,
                      ),
                      SizedBox(width: 10),
                      Text(
                        categoryName,
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "የሳምንቱ በጣም ንቁ ቀን",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 5),
           Container(
              height: 200,
              child: ListView.builder(
                itemCount: mostActiveCategories.length,
                itemBuilder: (BuildContext context, int index) {
                  String dayName =
                      mostActiveDays[index]['day_of_the_week'];
                  Widget dateImage = Image.asset(
                   'image/calimg.jpg',
                    width: 40,
                    height: 40,
                  );

                  return Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: dateImage,
                      ),
                      SizedBox(width: 10),
                      Text(
                        getDayofWeek(dayName),
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  );
                },
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
