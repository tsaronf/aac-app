import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = new DatabaseHelper.internal();
  final List<Map<String, String>> listOfAmharicCategories = [
    {'name': 'እንስሳ', 'machineName': 'am_animals'},
    {'name': 'ምግብ', 'machineName': 'am_foods'},
    {'name': 'የሰውነት ክፍል', 'machineName': 'am_bodyparts'},
    {'name': 'የቤተሰብ አባላት', 'machineName': 'am_family'},
    {'name': 'ድርጊት', 'machineName': 'am_activities'},
    {'name': 'ቀለማት', 'machineName': 'am_color'},
    {'name': 'ትዕዛዛት', 'machineName': 'am_instructions'},
    {'name': 'ቁሳቁስ', 'machineName': 'am_materials'},
    {'name': 'ምሳሌ', 'machineName': 'am_illustrations'},
    {'name': 'ስሜት', 'machineName': 'am_feelings'},
  ];
  final List<Map<String, String>> listOfEnglishCategories = [
    {'name': 'animals', 'machineName': 'animals'},
    {'name': 'foods', 'machineName': 'foods'},
    {'name': 'bodyparts', 'machineName': 'bodyparts'},
    {'name': 'family', 'machineName': 'family'},
    {'name': 'activities', 'machineName': 'activities'},
    {'name': 'color', 'machineName': 'color'},
    {'name': 'instructions', 'machineName': 'instructions'},
    {'name': 'materials', 'machineName': 'materials'},
    {'name': 'illustrations', 'machineName': 'illustrations'},
    {'name': 'feelings', 'machineName': 'feelings'},
  ];

  factory DatabaseHelper() => _instance;

  Database? _db;

  final String tableProgress = 'progress';
  final String columnId = 'id';
  final String columnCategoryName = 'categoryName';
  final String columnTimestamp = 'timestamp';

  final String tableFav = 'favorite';
  final String columnFavId = 'id';
  final String columnFavCategoryName = 'favCategoryName';
  final String columnMachineName = 'machineName';
  final String columnIsFav = 'isFav';
  final String columnFavUpdatedAt = 'updatedAt';

  final String tableProgressAm = 'am_progress';
  final String columnIdAm = 'am_id';
  final String columnCategoryNameAm = 'am_categoryName';
  final String columnTimestampAm = 'am_timestamp';

  final String tableFavAm = 'am_favorite';
  final String columnFavIdAm = 'am_id';
  final String columnFavCategoryNameAm = 'am_favCategoryName';
  final String columnMachineNameAm = 'am_machineName';
  final String columnIsFavAm = 'am_isFav';
  final String columnFavUpdatedAtAm = 'am_updatedAt';

  Future<Database?> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initDb();
    return _db;
  }

  DatabaseHelper.internal();

  initDb() async {
    String databasesPath = await getDatabasesPath();

    String path = join(databasesPath, 'progress.db');
    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }

  void _onCreate(Database db, int version) async {
    await db.execute(
        'CREATE TABLE $tableProgress($columnId INTEGER PRIMARY KEY,  $columnCategoryName TEXT, $columnTimestamp TEXT)');
    await db.execute('''
    CREATE TABLE $tableFav (
      $columnFavId INTEGER PRIMARY KEY AUTOINCREMENT,
      $columnFavCategoryName TEXT,
      $columnMachineName TEXT UNIQUE,
      $columnIsFav INTEGER DEFAULT 0,
      $columnFavUpdatedAt INTEGER DEFAULT 0
    )
    ''');
    listOfEnglishCategories.forEach((category) async {
      await db.insert(
        '$tableFav',
        {
          '$columnFavCategoryName': category['name'],
          '$columnMachineName': category['machineName']
        },
        conflictAlgorithm: ConflictAlgorithm.ignore,
      );
    });

    //amharic
    await db.execute(
        'CREATE TABLE $tableProgressAm($columnIdAm INTEGER PRIMARY KEY,  $columnCategoryNameAm TEXT, $columnTimestampAm TEXT)');
    await db.execute('''
    CREATE TABLE $tableFavAm (
      $columnFavIdAm INTEGER PRIMARY KEY AUTOINCREMENT,
      $columnFavCategoryNameAm TEXT,
      $columnMachineNameAm TEXT UNIQUE,
      $columnIsFavAm INTEGER DEFAULT 0,
      $columnFavUpdatedAtAm INTEGER DEFAULT 0
    )
    ''');
    listOfAmharicCategories.forEach((category) async {
      await db.insert(
        '$tableFavAm',
        {
          '$columnFavCategoryNameAm': category['name'],
          '$columnMachineNameAm': category['machineName']
        },
        conflictAlgorithm: ConflictAlgorithm.ignore,
      );
    });
  }

  Future<int> saveProgress(
      String table, String categoryName, String timestamp) async {
    var dbClient = await db;
    var result = table == tableProgress //english
        ? await dbClient!.insert(tableProgress, {
            columnCategoryName: categoryName,
            columnTimestamp: timestamp
          }) //amharic
        : await dbClient!.insert(tableProgressAm,
            {columnCategoryNameAm: categoryName, columnTimestampAm: timestamp});
    return result;
  }

  Future<List<Map>> getProgress(String table) async {
    var dbClient = await db;
    var result = table == tableProgress
        ?
        //english
        await dbClient!.query(tableProgress,
            columns: [columnCategoryName, columnTimestamp])
        : await dbClient!.query(tableProgressAm,
            columns: [columnCategoryNameAm, columnTimestampAm]);
    return result.toList();
  }

  Future<List<Map>> getMostActiveCategories(String table) async {
    var dbClient = await db;
    var result = table == tableProgress
        ? await dbClient!.rawQuery(
            'SELECT  $columnCategoryName, COUNT(*) as play_count FROM $tableProgress GROUP BY $columnCategoryName ORDER BY play_count DESC LIMIT 3;')
        : await dbClient!.rawQuery(
            'SELECT  $columnCategoryNameAm, COUNT(*) as play_count FROM $tableProgressAm GROUP BY $columnCategoryNameAm ORDER BY play_count DESC LIMIT 3;');
    return result.toList();
  }

  Future<Object?> getMostActiveDayofTheWeek(String table) async {
    var dbClient = await db;
    var result = table == tableProgress
        ? await dbClient!.rawQuery(
            "SELECT  strftime ('%w', $columnTimestamp) AS day_of_the_week, COUNT(*) as play_count FROM $tableProgress GROUP BY day_of_the_week ORDER BY play_count DESC LIMIT 1;")
        : await dbClient!.rawQuery(
            "SELECT  strftime ('%w', $columnTimestampAm) AS day_of_the_week, COUNT(*) as play_count FROM $tableProgressAm GROUP BY day_of_the_week ORDER BY play_count DESC LIMIT 1;");
    return result.toList().first['day_of_the_week'];
  }

  Future<int> insertCategory(String table, String categoryName) async {
    var dbClient = await db;
    int timestamp = DateTime.now().millisecondsSinceEpoch;
    try {
      table == tableProgress
          ? await dbClient?.update(
              '$tableFav',
              {'$columnIsFav': 1, '$columnFavUpdatedAt': timestamp},
              where: '$columnFavCategoryName = ?',
              whereArgs: [categoryName],
            )
          : await dbClient?.update(
              '$tableFavAm',
              {'$columnIsFavAm': 1, '$columnFavUpdatedAtAm': timestamp},
              where: '$columnFavCategoryNameAm = ?',
              whereArgs: [categoryName],
            );
      return 1;
    } catch (e) {
      return -1;
    }
  }

  Future<List<Map>> getFavoriteCategories(String table) async {
    var dbClient = await db;
    var result = table == tableProgress
        ? await dbClient!.rawQuery(
            'SELECT $columnFavCategoryName FROM $columnFavCategoryName WHERE $columnIsFav = 1 ORDER BY $columnFavUpdatedAt DESC LIMIT 4;')
        : await dbClient!.rawQuery(
            'SELECT $columnFavCategoryNameAm FROM $columnFavCategoryNameAm WHERE $columnIsFavAm = 1 ORDER BY $columnFavUpdatedAtAm DESC LIMIT 4;');
    ;

    return result.toList();
  }

  Future<List<Map>> getCategories(String table) async {
    var dbClient = await db;
    var result = table == tableProgress
        ? await dbClient!.rawQuery(
            'SELECT $columnFavCategoryName, $columnMachineName, $columnIsFav FROM $tableFav ;')
        : await dbClient!.rawQuery(
            'SELECT $columnFavCategoryNameAm, $columnMachineNameAm, $columnIsFavAm FROM $tableFavAm ;');

    return result.toList();
  }
}
