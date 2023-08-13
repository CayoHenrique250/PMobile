import 'package:flutter/material.dart';
import 'package:projeto/domain/tutorial.dart';

class ContainerImagensTutoriais extends StatefulWidget {
  final TutorialImagem tutorialImagem;

  const ContainerImagensTutoriais({
    Key? key,
    required this.tutorialImagem,
  }) : super(key: key);

  @override
  State<ContainerImagensTutoriais> createState() =>
      _ContainerImagensTutoriaisState();
}

class _ContainerImagensTutoriaisState extends State<ContainerImagensTutoriais> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: Container(
        height: 180,
        child: Image.asset(
          widget.tutorialImagem.imagem,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
