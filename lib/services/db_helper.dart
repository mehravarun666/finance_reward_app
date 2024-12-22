// services/db_helper.dart
import 'package:finance_reward/model/activity.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

class DBHelper {
  static Future<Database> _getDatabase() async {
    final dbPath = await getDatabasesPath();
    return openDatabase(
      join(dbPath, 'reward_tracker.db'),
      onCreate: (db, version) async {
        print("Creating table...");
        await db.execute(
          'CREATE TABLE IF NOT EXISTS activities('
              'id INTEGER PRIMARY KEY, '
              'description TEXT, '
              'date TEXT, '
              'points INTEGER)',
        );
        print("Table created.");
      },
      version: 1,
    );
  }

  static Future<void> insertActivity(Activity activity) async {
    final db = await _getDatabase();
    print("Inserting activity: ${activity.toMap()}");
    await db.insert('activities', activity.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<List<Activity>> getActivities() async {
    final db = await _getDatabase();
    final data = await db.query('activities');
    print('Fetched activities: $data');
    return data.map((item) => Activity.fromMap(item)).toList();
  }
}
