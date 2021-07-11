import 'package:cesta_brasil/app/src/models/model_instituicao.dart';
import 'package:cesta_brasil/setting.dart';
import 'package:path/path.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:sqflite/sqflite.dart';

class InstituicaoRepository {
  get i => null;

  Future<Database> _getDatabase() async {
    return openDatabase(
      join(await getDatabasesPath(), DATABASE_NAME),
      onCreate: (db, version) {
        return db.execute(CREATE_INSTITUICAO_TABLE_SCRIPT);
      },
      version: 1,
    );
  }

  Future create(InstituicaoModel model) async {
    try {
      final Database db = await _getDatabase();

      await db.insert(
        TABLE_NAME,
        model.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    } catch (ex) {
      print(ex);
      return;
    }
  }

  Future<List<InstituicaoModel>> getContacts() async {
    try {
      final Database db = await _getDatabase();
      final List<Map<String, dynamic>> maps = await db.query(TABLE_NAME);

      return List.generate(
        maps.length,
        (i) {
          return InstituicaoModel(
            name: maps[i]['name'],
            password: maps[i]['password'],
            email: maps[i]['email'],
            endereco: maps[i]['endereco'],
            cnpj: maps[i]['cnpj'],
          );
        },
      );
    } catch (ex) {
      print(ex);
      return <InstituicaoModel>[];
    }
  }

  Future<List<InstituicaoModel>?> search(String term) async {
    try {
      final Database db = await _getDatabase();
      final List<Map<String, dynamic>> maps = await db.query(
        TABLE_NAME,
        where: "name LIKE ?",
        whereArgs: [
          '%$term%',
        ],
      );

      return List.generate(
        maps.length,
        (i) {
          return InstituicaoModel(
            name: maps[i]['name'],
            password: maps[i]['password'],
            email: maps[i]['email'],
            endereco: maps[i]['endereco'],
            cnpj: maps[i]['cnpj'],
          );
        },
      );
    } catch (ex) {
      print(ex);
      return <InstituicaoModel>[];
    }
  }

  Future<InstituicaoModel> getContact(int id) async {
    try {
      final Database db = await _getDatabase();
      final List<Map<String, dynamic>> maps = await db.query(
        TABLE_NAME,
        where: "id = ?",
        whereArgs: [id],
      );

      return InstituicaoModel(
        name: maps[i]['name'],
        password: maps[i]['password'],
        email: maps[i]['email'],
        endereco: maps[i]['endereco'],
        cnpj: maps[i]['cnpj'],
      );
    } catch (ex) {
      print(ex);
      return new InstituicaoModel(
          cnpj: '', email: '', endereco: '', name: '', password: '');
    }
  }

  Future update(InstituicaoModel model) async {
    try {
      final Database db = await _getDatabase();

      await db.update(
        TABLE_NAME,
        model.toMap(),
        where: "name = ?",
        whereArgs: [model.name],
      );
    } catch (ex) {
      print(ex);
      return;
    }
  }

  Future delete(int id) async {
    try {
      final Database db = await _getDatabase();
      await db.delete(
        TABLE_NAME,
        where: "id = ?",
        whereArgs: [id],
      );
    } catch (ex) {
      print(ex);
      return;
    }
  }
}
