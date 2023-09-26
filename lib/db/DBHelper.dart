import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  initDB() async {
    String path = await getDatabasesPath();
    String dbPath = join(path, 'BANCO.db');

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
        'CREATE TABLE user (id CHAR PRIMARY KEY, nome varchar(100), sobrenome varchar(100), email varchar(100), senha varchar(100), ocupacao varchar(100));';
    await db.execute(sql);

    sql =
        "INSERT INTO user (id, nome, sobrenome, email, senha, ocupacao) VALUES (1, 'Silmara', 'Nunes', 'sns11@aluno.ifal.edu.br', '123', 'Auxiliar de professor');";
    await db.execute(sql);

    sql =
        "INSERT INTO user (id, nome, sobrenome, email, senha, ocupacao) VALUES (2, 'Natally', 'Emanuelle', 'neas12@aluno.ifal.edu.br', '1234', 'Designer');";
    await db.execute(sql);

    sql =
        "INSERT INTO user (id, nome, sobrenome, email, senha, ocupacao) VALUES (3, 'Amanda', 'Fernandes', 'afs13@aluno.ifal.edu.br', '12345', 'Destruidora de corações');";
    await db.execute(sql);

    sql =
        "INSERT INTO user (id, nome, sobrenome, email, senha, ocupacao) VALUES (4, 'Cayo', 'Henrique', 'chsf14@aluno.ifal.edu.br', '12346', 'Programador');";
    await db.execute(sql);






    sql =
        'CREATE TABLE SOBRE (id INTEGER PRIMARY KEY, imagem varchar(100), titulo varchar(100), descricao varchar(100), cor varchar(20), cor_titulo varchar(20));';
    await db.execute(sql);

    sql =
        "INSERT INTO SOBRE (id, imagem, titulo, descricao, cor, cor_titulo) VALUES (1, 'assets/imagens/sustentabilidade.jpg', 'Sustentabilidade', 'Sustentabilidade é a capacidade de cumprir com as necessidades do presente sem comprometer as mesmas das gerações futuras.', '0xFFFFFFFF', '0xFF1B5E20');";
    await db.execute(sql);

    sql =
        "INSERT INTO SOBRE (id, imagem, titulo, descricao, cor, cor_titulo) VALUES (2, 'assets/imagens/meioAmbiente.jpg', 'Meio Ambiente', 'O meio ambiente diz respeito ao conjunto de elementos e processos biológicos, químicos e físicos responsáveis pela vida no planeta Terra.', '0xFFCCFF90', '0xFF1B5E20');";
    await db.execute(sql);

    sql =
        "INSERT INTO SOBRE (id, imagem, titulo, descricao, cor, cor_titulo) VALUES (3, 'assets/imagens/tsma.jpg', 'Projeto TSMA', 'Equipe:\n\nAmanda Fernandes;\nCayo Henrique;\nNatally Emanuelle e\nSilmara Nunes.', '0xFFFFFFFF', '0xFF1B5E20');";
    await db.execute(sql);






    sql =
        'CREATE TABLE TUTORIAIS (id INTEGER PRIMARY KEY, imagem varchar(100), titulo varchar(100), cor varchar(20), cor_titulo varchar(20), descricao varchar(100), proxima varchar(20));';
    await db.execute(sql);

    sql =
        "INSERT INTO TUTORIAIS (id, imagem, titulo, cor, cor_titulo, descricao) VALUES (1, 'assets/imagens/tartarugaPet.jpg', 'Tartarugas PET', '0xFFFFFFFF', '0xFF1B5E20', 'Tartarugas feitas com fundo de garrafa PET e EVA.');";
    await db.execute(sql);

    sql =
        "INSERT INTO TUTORIAIS (id, imagem, titulo, cor, cor_titulo, descricao) VALUES (2, 'assets/imagens/porcoEspinho.jpg', 'Porco espinho de revista', '0xFFCCFF90', '0xFF1B5E20', 'Porco espinho de papelão e recortes de revistas.');";
    await db.execute(sql);

  }
}

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

class DBHelperTutorialWidget2 {
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

class DBHelperTutorialWidgetsTextImg2 {
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