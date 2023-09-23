import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelperTutorialWidget {
  initDB() async {
    String path = await getDatabasesPath();
    String dbPath = join(path, 'TUTORIAL2.db');

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
        'CREATE TABLE TUTORIAL2 (ID INT AUTO_INCREMENT PRIMARY KEY, VIDEO VARCHAR(100), TITULO VARCHAR(100), TEXTO VARCHAR(200), TITULO2 VARCHAR(100));';
    await db.execute(sql);

    sql =
        "INSERT INTO TUTORIAL2 (VIDEO, TITULO, TEXTO, TITULO2) VALUES ('assets/videos/video.mp4', 'Materiais:', '• Papelão; \n• Revista; \n• Tesoura sem ponta; \n• Lápis; \n• Cola branca; \n• Caneta permanente.', 'Como fazer?');";
    await db.execute(sql);

  }

}

class DBHelperTutorialWidgetsTextImg {
  initDB() async {
    String path = await getDatabasesPath();
    String dbPath = join(path, 'TEXTO_IMG2.db');

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
        'CREATE TABLE TEXTO_IMG2 (ID INT AUTO_INCREMENT PRIMARY KEY, TEXTO VARCHAR(200), IMAGEM VARCHAR(100), ID_TUTORIAL1 INTEGER, FOREIGN KEY (ID_TUTORIAL1) REFERENCES TUTORIAL1 (ID));';
    await db.execute(sql);

    sql =
        "INSERT INTO TEXTO_IMG2 (TEXTO, IMAGEM) VALUES ('1- Com o lápis desenhe o molde do corpo do porco-espinho no papelão e recorte com a tesoura;', 'assets/imagens/tutorial2/imagem1.png');";
    await db.execute(sql);

    sql =
        "INSERT INTO TEXTO_IMG2 (TEXTO, IMAGEM) VALUES ('2- Pegue a revista e recorte vários pedacinhos em formato de triângulos;', 'assets/imagens/tutorial2/imagem2.png');";
    await db.execute(sql);

    sql =
        "INSERT INTO TEXTO_IMG2 (TEXTO, IMAGEM) VALUES ('3- Pegue a cola e cole os pedacinhos de papel no molde do porco-espinho, deixando só a parte do rosto livre, colocando as pontas dos triângulos para fora para parecerem espinhos;', 'assets/imagens/tutorial2/imagem3.png');";
    await db.execute(sql);

    sql =
        "INSERT INTO TEXTO_IMG2 (TEXTO, IMAGEM) VALUES ('4- Enquanto espera secar, desenhe com o lápis piloto o rosto de porco-espinho;', 'assets/imagens/tutorial2/imagem4.png');";
    await db.execute(sql);

    sql =
        "INSERT INTO TEXTO_IMG2 (TEXTO, IMAGEM) VALUES ('5- E está pronto! Agora é só deixar a criançada se divertir!', 'assets/imagens/tutorial2/imagem5.png');";
    await db.execute(sql);

  }

}