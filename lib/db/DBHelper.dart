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
