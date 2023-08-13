import 'package:flutter/material.dart';
import 'package:projeto/domain/tutorial.dart';

class ContainerTituloTutorial extends StatefulWidget {
  final TutorialTitulo tutorialTitulo;

  const ContainerTituloTutorial({
    Key? key,
    required this.tutorialTitulo,
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
        widget.tutorialTitulo.titulo,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Color(0xFF1C3509),
        ),
      ),
    );
  }
}
