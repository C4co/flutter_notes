import 'package:sqflite/sqflite.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart';
import '../models/planet.dart';

class ProjectDatabase {
  Future<Database> init() async {
    String path = await getDatabasesPath();

    return openDatabase(
      join(path, 'planets.db'),
      version: 1,
      onCreate: (db, version) async {

        // a simple way to create and database

        await db.execute(
          """
            CREATE TABLE planets(
              id INTEGER PRIMARY KEY,
              name TEXT NOT NULL,
              age INTEGER NOT NULL
            )
          """
        );
      },
    );
  }

  // adding data
  Future<int> insert(List<Planet> planets) async {
    int result = 0;

    final Database db = await init();

    for(var planet in planets ){
      result = await db.insert(
        'planets',
        planet.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace
      );
    }

    return result;
  }

  // retrieve data
  Future<List<Planet>> retrievePlanets() async {
    final Database db = await init();
    final List<Map<String, Object?>> queryResult = await db.query('planets');
    return queryResult.map((e) => Planet.fromMap(e)).toList();
  }

  Future<void> deletePlanet(int id) async {
    final db = await init();

    await db.delete(
      'planets',
      where: "id = :",
      whereArgs: [id]
    );
  }
}
