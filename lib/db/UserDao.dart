import 'package:projeto/db/DBHelper.dart';
import 'package:projeto/domain/User.dart';
import 'package:sqflite/sqlite_api.dart';

class UserDao {
  findAll() async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM user;';
    final resultSet = await db.rawQuery(sql);

    print('$resultSet');
  }

  salvarUsuario({required User user}) async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();
    db.insert('user', user.toJson());
  }

  Future<bool> autenticar(
      {required String user, required String password}) async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM user '
        'WHERE email = ? '
        'AND senha = ?;';

    final resultSet = await db.rawQuery(sql, [user, password]);

    return resultSet.isNotEmpty;
  }
}
