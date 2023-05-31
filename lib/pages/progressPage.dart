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
  String mostActiveDay = '';

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
    Object? day = await dbHelper.getMostActiveDayofTheWeek(dbType);

    String dayOfTheWeek = getDayofWeek(day);

    setState(() {
      progressList = list;

      mostActiveDay = dayOfTheWeek;
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
      body: ListView(
        children: [
          Text(
            "ከፍተኛ 3 ንቁ ምድቦች",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Container(
            height: 150,
            child: ListView.builder(
              itemCount: mostActiveCategories.length,
              itemBuilder: (BuildContext context, int index) {
                String categoryName =
                    mostActiveCategories[index]['am_categoryName'];
                return ListTile(
                  title: Text(categoryName),
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
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(mostActiveDay),
          SizedBox(
            height: 20,
          ),
          Text(
            "All Progress",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Container(
            height: 300,
            child: ListView.builder(
              itemCount: progressList.length,
              itemBuilder: (BuildContext context, int index) {
                String timestamp = progressList[index]['am_timestamp'];
                String categoryName = progressList[index]['am_categoryName'];

                return ListTile(
                  title: Text(categoryName),
                  subtitle: Text(timestamp),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
