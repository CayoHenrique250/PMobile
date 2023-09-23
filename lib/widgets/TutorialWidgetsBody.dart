import 'package:flutter/material.dart';
import 'package:projeto/domain/tutorial.dart';

class TutorialWidgetsBody extends StatefulWidget {
  final TutorialWidgetsTextImg tutorialWidgetsBody;

  const TutorialWidgetsBody({
    Key? key,
    required this.tutorialWidgetsBody,
  }) : super(key: key);

  @override
  State<TutorialWidgetsBody> createState() => _TutorialWidgetsBodyState();
}

class _TutorialWidgetsBodyState extends State<TutorialWidgetsBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(15),
        child: Column(children: [
          Container(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              widget.tutorialWidgetsBody.texto,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 35),
          Padding(
            padding: EdgeInsets.zero,
            child: SizedBox(
              height: 180,
              child: Image.asset(
                widget.tutorialWidgetsBody.imagem,
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          const SizedBox(height: 15),
        ]));
  }
}
