import 'package:cesta_brasil/src/models/model_fisica.dart'; //import model class
import 'package:sqflite/sqflite.dart'; //sqflite package
import 'package:path_provider/path_provider.dart'; //path_provider package
import 'package:path/path.dart'; //used to join paths
import 'dart:io';
import 'dart:async';

class VanessaDbProvider {
  Future<Database> init() async {
    Directory directory =
        await getApplicationDocumentsDirectory(); //returns a directory which stores permanent files
    final path = join(directory.path, "vanessa.db"); //create path to database

    return await openDatabase(
        //open the database or create a database if there isn't any
        path,
        version: 1, onCreate: (Database db, int version) async {
      await db.execute("""
          CREATE TABLE user (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          email TEXT,
          password INTEGER,
          endereco TEXT,
          name TEXT,
          nascimento DATE '',
    )""");
    });
  }

  Future<int> addItem(FisicaModel item) async {
    //returns number of items inserted as an integer

    final db = await init(); //open database

    return db.insert(
      "Vanessa", item.toMap(), //toMap() function from MemoModel
      conflictAlgorithm:
          ConflictAlgorithm.ignore, //ignores conflicts due to duplicate entries
    );
  }

  Future<List<FisicaModel>> fetchVanessa() async {
    //returns the memos as a list (array)

    final db = await init();
    final maps = await db
        .query("Vanessa"); //query all the rows in a table as an array of maps

    return List.generate(maps.length, (i) {
      //create a list of memos
      return FisicaModel(
        id: maps[i]['id'] as int,
        email: maps[i]['email'] as String,
        password: maps[i]['password'] as int,
        endereco: maps[i]['endereco'] as String,
        name: maps[i]['name'] as String,
        nascimento: maps[i]['nascimento'] as int,
      );
    });
  }

  Future<int> deleteVanessa(int id) async {
    //returns number of items deleted
    final db = await init();

    int result = await db.delete("Vanessa", //table name
        where: "id = ?",
        whereArgs: [id] // use whereArgs to avoid SQL injection
        );

    return result;
  }

  Future<int> updateVanessa(int id, FisicaModel item) async {
    // returns the number of rows updated

    final db = await init();

    int result = await db
        .update("Memos", item.toMap(), where: "id = ?", whereArgs: [id]);
    return result;
  }
}
