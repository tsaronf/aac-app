import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sampleproject/database_helper.dart';

class enprogressPage extends StatefulWidget {
  @override
  _enprogressPageState createState() => _enprogressPageState();
}

class _enprogressPageState extends State<enprogressPage> {
  final dbHelper = DatabaseHelper();
  final dbType = "progress";
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
          dayOfTheWeek = 'Sunday';
        }
        break;

      case "1":
        {
          dayOfTheWeek = 'Monday';
        }
        break;
      case "2":
        {
          dayOfTheWeek = 'Tuesday';
        }
        break;

      case "3":
        {
          dayOfTheWeek = 'Wednesday';
        }
        break;
      case "4":
        {
          dayOfTheWeek = 'Thursday';
        }
        break;

      case "5":
        {
          dayOfTheWeek = 'Friday';
        }
        break;
      case "6":
        {
          dayOfTheWeek = 'Saturday';
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
        title: const Text('Progress'),
      ),
      body: ListView(
        children: [
          Text(
            "Top 3 Active categories",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Container(
            height: 150,
            child: ListView.builder(
              itemCount: mostActiveCategories.length,
              itemBuilder: (BuildContext context, int index) {
                String categoryName =
                    mostActiveCategories[index]['categoryName'];
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
            "Most Active Day of the Week",
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
                String timestamp = progressList[index]['timestamp'];
                String categoryName = progressList[index]['categoryName'];

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
