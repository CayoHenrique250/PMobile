import 'package:flutter/material.dart';
import 'package:projeto/db/PerfilDao.dart';
import 'package:projeto/domain/User.dart';

class CardPerfil extends StatefulWidget {
  final User perfil;

  const CardPerfil({
    Key? key,
    required this.perfil,
  }) : super(key: key);

  @override
  State<CardPerfil> createState() => _CardPerfilState();
}

class _CardPerfilState extends State<CardPerfil> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Text(
          'NOME',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w700,
            color: Colors.lightGreen,
          ),
        ),
        SizedBox(height: 14),
        Text(
          widget.perfil.nome,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 20),
        Text(
          'OCUPAÇÃO',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w700,
            color: Colors.lightGreen,
          ),
        ),
        SizedBox(height: 14),
        Text(
          widget.perfil.ocupacao,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 20),
        Text(
          'ID',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w700,
            color: Colors.lightGreen,
          ),
        ),
        SizedBox(height: 14),
        Text(
          widget.perfil.id,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
