import 'package:flutter/material.dart';
import 'package:projeto/domain/tutorial.dart';

class ContainerTextoTutoriais extends StatefulWidget {
  final TutorialTexto tutorialTexto;

  const ContainerTextoTutoriais({
    Key? key,
    required this.tutorialTexto,
  }) : super(key: key);

  @override
  State<ContainerTextoTutoriais> createState() =>
      _ContainerTextoTutoriaisState();
}

class _ContainerTextoTutoriaisState extends State<ContainerTextoTutoriais> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(26),
      child: Container(
        padding: EdgeInsets.only(left: 25), // Espaçamento inicial à esquerda
        child: Text(
          widget.tutorialTexto.texto,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
