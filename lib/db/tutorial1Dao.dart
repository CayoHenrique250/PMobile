import 'package:projeto/domain/tutorial.dart';
import 'package:sqflite/sqflite.dart';
import 'package:projeto/db/DBHelper.dart';

class TutorialWidgetsDao {
  Future<List<TutorialWidgets>> findAll() async {
    await Future.delayed(const Duration(seconds: 5));
    DBHelperTutorialWidget dbHelperTutorialWidgets = DBHelperTutorialWidget();
    Database db = await dbHelperTutorialWidgets.initDB();

    String sql = 'SELECT * FROM TUTORIAL1;';
    final resultSet = await db.rawQuery(sql);

    List<TutorialWidgets> list = [];
    for (var json in resultSet) {
      TutorialWidgets tutorialWidgets = TutorialWidgets.fromJson(json);
      list.add(tutorialWidgets);
    }

    return list;
  }
}

class TutorialWidgetsTextImgDao {
  Future<List<TutorialWidgetsTextImg>> findAll() async {
    await Future.delayed(const Duration(seconds: 5));
    DBHelperTutorialWidgetsTextImg dbHelperTutorialWidgetsTextImg = DBHelperTutorialWidgetsTextImg();
    Database db = await dbHelperTutorialWidgetsTextImg.initDB();

    String sql = 'SELECT * FROM TEXTO_IMG;';
    final resultSet = await db.rawQuery(sql);

    List<TutorialWidgetsTextImg> list = [];
    for (var json in resultSet) {
      TutorialWidgetsTextImg tutorialWidgetsTextImg =
          TutorialWidgetsTextImg.fromJson(json);
      list.add(tutorialWidgetsTextImg);
    }

    return list;
  }
}
