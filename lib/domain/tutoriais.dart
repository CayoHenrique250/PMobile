import 'package:flutter/material.dart';

class Tutoriais {
  late String imagem;
  late String titulo;
  late String cor;
  late String cor_titulo;
  late String descricao;

  Tutoriais({
    required this.imagem,
    required this.titulo,
    required this.cor,
    required this.cor_titulo,
    required this.descricao,
  });

  Tutoriais.fromJson(Map<String, dynamic> json) {
    imagem = json['imagem'];
    titulo = json['titulo'];
    cor = json['cor'];
    cor_titulo = json['cor_titulo'];
    descricao = json['descricao'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['imagem'] = this.imagem;
    data['titulo'] = this.titulo;
    data['cor'] = this.cor;
    data['cor_titulo'] = this.cor_titulo;
    data['descricao'] = this.descricao;

    return data;
  }
}

