import 'package:projeto/domain/User.dart';
import 'package:sqflite/sqflite.dart';

import 'DBHelper.dart';

class PerfilDao {
  static String email = '';

  Future<List<User>> findAll() async {
    await Future.delayed(const Duration(seconds: 5));
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM user;';
    final resultSet = await db.rawQuery(sql);

    List<User> list = [];
    for (var json in resultSet) {
      print(json);
      User perfil = User.fromJson(json);
      list.add(perfil);
    }

    return list;
  }

  Future<User> findByEmail(String email) async {
    await Future.delayed(const Duration(seconds: 5));
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM user where email = ?;';
    final resultSet = await db.rawQuery(sql, [email]);

    User perfil = User.fromJson(resultSet[0]);

    return perfil;
  }
}
