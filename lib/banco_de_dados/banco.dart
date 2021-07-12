import 'package:cesta_brasil/src/models/model_instituicao.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../setting.dart';

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
    );
  } catch (ex) {
    print(ex);
    return;
  }
}

// Future<List<InstituicaoModel>> getContacts() async {
//   try {
//     final Database db = await _getDatabase();
//     final List<Map<String, dynamic>> maps = await db.query(TABLE_NAME);

//     return List.generate(
//       maps.length,
//       (i) {
//         return InstituicaoModel.fromMap(
//           maps[i],
//         );
//       },
//     );
//   } catch (ex) {
//     print(ex);
//     // ignore: deprecated_member_use
//     return <InstituicaoModel>[];
//   }
// }
