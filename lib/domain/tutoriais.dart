import 'package:flutter/material.dart';

class Tutoriais {
  final String imagem;
  final String titulo;
  final int cor;
  final int cor_titulo;
  final String descricao;
  final Widget proxima;

  const Tutoriais({
    required this.imagem,
    required this.titulo,
    required this.cor,
    required this.cor_titulo,
    required this.descricao,
    required this.proxima,
  });
}
