import 'package:flutter/material.dart';

class ContainerTopo extends StatefulWidget {
  final String titulo;
  final double heightGreen;
  final double topWhite;
  final double heightWhite;
  final double widthWhite;
  final double textLeft;
  final double textTop;
  final double fontSize;

  const ContainerTopo({
    Key? key,
    required this.titulo,
    required this.heightGreen,
    required this.topWhite,
    required this.heightWhite,
    required this.widthWhite,
    required this.textLeft,
    required this.textTop,
    required this.fontSize,
  }) : super(key: key);

  @override
  State<ContainerTopo> createState() => _ContainerTopoState();
}

class _ContainerTopoState extends State<ContainerTopo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.heightGreen,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(50),
        ),
        color: Color(0xFF33691E),
      ),
      child: Stack(
        children: [
          Positioned(
              top: widget.topWhite,
              left: 0,
              child: Container(
                height: widget.heightWhite,
                width: widget.widthWhite,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    )),
              )),
          Positioned(
            left: widget.textLeft,
            top: widget.textTop,
            child: Text(widget.titulo,
                style: TextStyle(
                    fontSize: widget.fontSize,
                    color: Color(0xFF33691E),
                    fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
