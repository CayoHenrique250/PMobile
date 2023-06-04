import 'package:flutter/material.dart';

class ContainerTopo extends StatefulWidget {
  final String titulo;

  const ContainerTopo({
    Key? key,
    required this.titulo,
  }) : super(key: key);

  @override
  State<ContainerTopo> createState() => _ContainerTopoState();
}

class _ContainerTopoState extends State<ContainerTopo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(50),
        ),
        color: Color(0xFF33691E),
      ),
      child: Stack(
        children: [
          Positioned(
              top: 80,
              left: 0,
              child: Container(
                height: 100,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    )),
              )),
          Positioned(
            left: 20,
            top: 115,
            child: Text(widget.titulo,
                style: TextStyle(
                    fontSize: 30,
                    color: Color(0xFF33691E),
                    fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
