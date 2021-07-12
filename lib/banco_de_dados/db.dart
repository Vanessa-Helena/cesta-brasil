import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DB {
  DB._();

  static final DB instance = DB._();

  static Database? _database;

  get database async {
    if (_database != null) return _database;

    return await _initDatabase();
  }

  _initDatabase() async {
    return openDatabase(
      join(await getDatabasesPath(), 'vanessa.db'),
      version: 1,
      onCreate: _onCreate,
    );
  }

  _onCreate(db, versao) async {
    await db.execute(_user);
    await db.execute(_userjuridica);
  }

  String get _user => '''
    CREATE TABLE user (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      email CHAR,
      password INTEGER,
      endereco VARCHAR,
      name CHAR,
      nascimento DATE '',
    )
  ''';

  String get _userjuridica => '''
    CREATE TABLE userjuridica (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      email CHAR,
      password INTEGER,
      endereco VARCHAR,
      name CHAR,
      cnpj INTEGER,
    )
  ''';
}
