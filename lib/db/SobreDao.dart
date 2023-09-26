import 'package:projeto/db/DBHelper.dart';
import 'package:projeto/domain/Sobre.dart';
import 'package:sqflite/sqflite.dart';

class SobreDao {
  Future<List<Sobre>> findAll() async {
    await Future.delayed(const Duration(seconds: 5));
    DBHelper dbHelperSobre = DBHelper();
    Database db = await dbHelperSobre.initDB();

    String sql = 'SELECT * FROM SOBRE;';
    final resultSet = await db.rawQuery(sql);

    List<Sobre> list = [];
    for (var json in resultSet) {
      Sobre sobre = Sobre.fromJson(json);
      list.add(sobre);
    }

    return list;
  }
}
