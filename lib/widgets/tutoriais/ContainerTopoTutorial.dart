import 'package:flutter/material.dart';

class ContainerTopoTutorial extends StatefulWidget {
  final String titulo;

  const ContainerTopoTutorial({
    Key? key,
    required this.titulo,
  }) : super(key: key);

  @override
  State<ContainerTopoTutorial> createState() => _ContainerTopoTutorialState();
}

class _ContainerTopoTutorialState extends State<ContainerTopoTutorial> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(100),
        ),
        color: Color(0xFF33691E),
      ),
      child: Stack(
        children: [
          Positioned(
              top: 40,
              left: 0,
              child: Container(
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    )),
              )),
          Positioned(
            left: 15,
            top: 60,
            child: Text(widget.titulo,
                style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF33691E),
                    fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
