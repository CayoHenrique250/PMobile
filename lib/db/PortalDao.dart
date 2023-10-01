import 'package:projeto/db/DBHelper.dart';
import 'package:projeto/domain/Portal.dart';
import 'package:sqflite/sqflite.dart';

class PortalDao {
  Future<List<Portal>> findAll() async {
    await Future.delayed(const Duration(seconds: 2));
    DBHelper dbHelperPortal = DBHelper();
    Database db = await dbHelperPortal.initDB();

    String sql = 'SELECT * FROM PORTAL;';
    final resultSet = await db.rawQuery(sql);

    List<Portal> list = [];
    for (var json in resultSet) {
      Portal portal = Portal.fromJson(json);
      list.add(portal);
    }

    return list;
  }
}

class PortalCardDao {
  Future<List<PortalCard>> findAll() async {
    await Future.delayed(const Duration(seconds: 5));
    DBHelper dbHelperTutorialWidgetsTextImg = DBHelper();
    Database db = await dbHelperTutorialWidgetsTextImg.initDB();

    String sql = 'SELECT * FROM PORTALCARD;';
    final resultSet = await db.rawQuery(sql);

    List<PortalCard> list = [];
    for (var json in resultSet) {
      PortalCard portalCard = PortalCard.fromJson(json);
      list.add(portalCard);
    }

    return list;
  }
}
