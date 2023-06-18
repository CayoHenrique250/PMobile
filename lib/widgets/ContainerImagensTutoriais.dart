import 'package:flutter/material.dart';

class ContainerImagensTutoriais extends StatefulWidget {
  final String imagem;

  const ContainerImagensTutoriais({
    Key? key,
    required this.imagem,
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
          widget.imagem,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
