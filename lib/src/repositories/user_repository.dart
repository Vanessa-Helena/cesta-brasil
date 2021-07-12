import 'package:cesta_brasil/banco_de_dados/db.dart';
import 'package:cesta_brasil/src/models/model_fisica.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqlite_api.dart';

class UserRepository extends ChangeNotifier {
  late Database db;

  List<FisicaModel> _user = [];

  get user => _user;

  UserRepository() {
    _initRepository();
  }

  _initRepository() async {
    await _getUser();
  }

  _getUser() async {
    db = await DB.instance.database;
    List user = await db.query('user', limit: 4);
    _user = user.first[''];
    notifyListeners();
  }
}
