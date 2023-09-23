import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelperPortalCard {
  initDB() async {
    String path = await getDatabasesPath();
    String dbPath = join(path, 'PORTALCARD.db');

    Database db = await openDatabase(
      dbPath,
      version: 1,
      onCreate: onCreate,
    );

    print(dbPath);
    return db;
  }

  Future<FutureOr<void>> onCreate(Database db, int version) async {
    String sql =
        'CREATE TABLE PORTALCARD (ID INT AUTO_INCREMENT PRIMARY KEY, IMAGEM VARCHAR(100));';
    await db.execute(sql);

    sql =
        "INSERT INTO PORTALCARD (IMAGEM) VALUES ('assets/imagens/Planeta.jpg');";
    await db.execute(sql);
  }
}

class DBHelperPortal {
  initDB() async {
    String path = await getDatabasesPath();
    String dbPath = join(path, 'PORTAL.db');

    Database db = await openDatabase(
      dbPath,
      version: 1,
      onCreate: onCreate,
    );

    print(dbPath);
    return db;
  }

  Future<FutureOr<void>> onCreate(Database db, int version) async {
    String sql =
        'CREATE TABLE PORTAL (ID INT AUTO_INCREMENT PRIMARY KEY, URL VARCHAR(100), TITULO VARCHAR(50), ID_PORTALCARD INTEGER, FOREIGN KEY (ID_PORTALCARD) REFERENCES PORTALCARD (ID));';
    await db.execute(sql);

    sql =
        "INSERT INTO PORTAL (URL, TITULO) VALUES ('https://brasil.un.org/pt-br', 'ONU: Nações Unidas Brasil');";
    await db.execute(sql);

    sql =
        "INSERT INTO PORTAL (URL, TITULO) VALUES ('https://noticias.portaldaindustria.com.br/listas/5-projetos-sustentaveis-para-preservar-o-meio-ambiente/', '5 Projetos Sustentáveis');";
    await db.execute(sql);

    sql =
        "INSERT INTO PORTAL (URL, TITULO) VALUES ('https://premioconscienciaambiental.com/#:~:text=As%20inscri%C3%A7%C3%B5es%20do%20Pr%C3%AAmio%20Consci%C3%AAncia,site%20www.premioconscienciaambiental.com.', 'Prêmio Consciência Ambiental');";
    await db.execute(sql);

    sql =
        "INSERT INTO PORTAL (URL, TITULO) VALUES ('http://www.meioambiente.mg.gov.br/premioboaspraticas', 'Prêmio de boas práticas Ambientais');";
    await db.execute(sql);
  }
}
