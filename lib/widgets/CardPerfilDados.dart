import 'package:flutter/material.dart';
import 'package:projeto/domain/Perfil.dart';

class CardPerfilDados extends StatefulWidget {
  final Perfil perfil;

  const CardPerfilDados({
    Key? key,
    required this.perfil,
  }) : super(key: key);

  @override
  State<CardPerfilDados> createState() => _CardPerfilDadosState();
}

class _CardPerfilDadosState extends State<CardPerfilDados> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 14),
        Text(
          widget.perfil.dados,
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
