import 'package:flutter/material.dart';

class ContainerTituloTutorial extends StatefulWidget {
  final String titulo;

  const ContainerTituloTutorial({
    Key? key,
    required this.titulo,
  }) : super(key: key);

  @override
  State<ContainerTituloTutorial> createState() =>
      _ContainerTituloTutorialState();
}

class _ContainerTituloTutorialState extends State<ContainerTituloTutorial> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 25), // Espaçamento inicial à esquerda
      child: Text(
        widget.titulo,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Color(0xFF1C3509),
        ),
      ),
    );
  }
}
