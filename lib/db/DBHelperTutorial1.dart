import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelperTutorialWidget {
  initDB() async {
    String path = await getDatabasesPath();
    String dbPath = join(path, 'TUTORIAL1.db');

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
        'CREATE TABLE TUTORIAL1 (ID INT AUTO_INCREMENT PRIMARY KEY, VIDEO VARCHAR(100), TITULO VARCHAR(100), TEXTO VARCHAR(200), TITULO2 VARCHAR(100));';
    await db.execute(sql);

    sql =
        "INSERT INTO TUTORIAL1 (VIDEO, TITULO, TEXTO, TITULO2) VALUES ('assets/videos/video.mp4', 'Materiais:', ' • Garrafa pet de 2 litros; \n• Emborrachado verde; \n • Caneta permanente (preto de preferência); \n • Pistola de cola quente; \n • Tesoura sem ponta; \n • Lápis; \n • Fita de cetim (opcional).', 'Como fazer?');";
    await db.execute(sql);

  }

}

class DBHelperTutorialWidgetsTextImg {
  initDB() async {
    String path = await getDatabasesPath();
    String dbPath = join(path, 'TEXTO_IMG.db');

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
        'CREATE TABLE TEXTO_IMG (ID INT AUTO_INCREMENT PRIMARY KEY, TEXTO VARCHAR(200), IMAGEM VARCHAR(100), ID_TUTORIAL1 INTEGER, FOREIGN KEY (ID_TUTORIAL1) REFERENCES TUTORIAL1 (ID));';
    await db.execute(sql);

    sql =
        "INSERT INTO TEXTO_IMG (TEXTO, IMAGEM) VALUES ('1- Com o lápis faça um molde do corpo da tartaruga no emborrachado e recorte com a tesoura;', 'assets/imagens/tutorial1/imagem1.png');";
    await db.execute(sql);

    sql =
        "INSERT INTO TEXTO_IMG (TEXTO, IMAGEM) VALUES ('2- Corte com a tesoura a parte de baixo da garrafa onde está marcado com uma linha;', 'assets/imagens/tutorial1/imagem2.png');";
    await db.execute(sql);

    sql =
        "INSERT INTO TEXTO_IMG (TEXTO, IMAGEM) VALUES ('3- Desenhe com a caneta permanente o rosto e as patinhas da tartaruga;', 'assets/imagens/tutorial1/imagem3.png');";
    await db.execute(sql);

    sql =
        "INSERT INTO TEXTO_IMG (TEXTO, IMAGEM) VALUES ('4- Com a cola quente, cole a parte recortada da garrafa PET no corpo de EVA da tartaruga;', 'assets/imagens/tutorial1/imagem4.png');";
    await db.execute(sql);

    sql =
        "INSERT INTO TEXTO_IMG (TEXTO, IMAGEM) VALUES ('5- Faça um laço com a fita colorida e decore a tartaruga (opcional);', 'assets/imagens/tutorial1/imagem5.png');";
    await db.execute(sql);

    sql =
        "INSERT INTO TEXTO_IMG (TEXTO, IMAGEM) VALUES ('6- E está pronto! Agora é só deixar a criançada se divertir!', 'assets/imagens/tutorial1/imagem6.png');";
    await db.execute(sql);

  }

}
