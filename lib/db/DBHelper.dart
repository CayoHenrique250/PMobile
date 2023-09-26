import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  initDB() async {
    String path = await getDatabasesPath();
    String dbPath = join(path, 'pacote4.db');

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

  }

}