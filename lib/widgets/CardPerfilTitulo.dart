import 'package:flutter/material.dart';
import 'package:projeto/domain/Perfil.dart';

class CardPerfilTitulo extends StatefulWidget {
  final Perfil perfil;

  const CardPerfilTitulo({
    Key? key,
    required this.perfil,
  }) : super(key: key);

  @override
  State<CardPerfilTitulo> createState() => _CardPerfilTituloState();
}

class _CardPerfilTituloState extends State<CardPerfilTitulo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Text(
          widget.perfil.titulo,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w700,
            color: Colors.lightGreen,
          ),
        ),
      ],
    );
  }
}
