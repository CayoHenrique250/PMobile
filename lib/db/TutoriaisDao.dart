import 'package:projeto/db/DBHelper.dart';
import 'package:projeto/domain/tutoriais.dart';
import 'package:sqflite/sqflite.dart';

class TutoriaisDao {
  Future<List<Tutoriais>> findAll() async {
    await Future.delayed(const Duration(seconds: 2));
    DBHelper dbHelperTutoriais = DBHelper();
    Database db = await dbHelperTutoriais.initDB();

    String sql = 'SELECT * FROM TUTORIAIS;';
    final resultSet = await db.rawQuery(sql);

    List<Tutoriais> list = [];
    for (var json in resultSet) {
      Tutoriais tutoriais = Tutoriais.fromJson(json);
      list.add(tutoriais);
    }

    return list;
  }
}
