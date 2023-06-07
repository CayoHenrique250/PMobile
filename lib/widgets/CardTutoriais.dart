//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:projeto/tutoriais/Tutorial1.dart';
import 'package:projeto/tutoriais/Tutorial2.dart';

class CardTutoriais extends StatefulWidget {
  final String imagem;
  final String titulo;
  final int cor;
  final int cor_titulo;
  final String descricao;
  final Widget proxima;

  const CardTutoriais({
    Key? key,
    required this.imagem,
    required this.titulo,
    required this.cor,
    required this.cor_titulo,
    required this.descricao,
    required this.proxima,
  }) : super(key: key);

  @override
  State<CardTutoriais> createState() => _CardTutoriaisState();
}

class _CardTutoriaisState extends State<CardTutoriais> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 270,
        child: Stack(
          children: [
            Positioned(
                top: 35,
                left: 20,
                right: 20,
                child: Material(
                  child: Container(
                    height: 200,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Color(widget.cor),
                      borderRadius: BorderRadius.circular(0.0),
                      boxShadow: [
                        new BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 4,
                          blurRadius: 20,
                          offset: Offset(-10, 10),
                        ),
                      ],
                    ),
                  ),
                )),
            Positioned(
                top: 0,
                left: 30,
                child: Card(
                    elevation: 10,
                    shadowColor: Colors.grey.withOpacity(0.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(widget.imagem),
                        ),
                      ),
                    ))),
            Positioned(
              top: 40,
              left: 200,
              child: Container(
                height: 230,
                width: 180,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.titulo,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(widget.cor_titulo))),
                    Divider(color: Colors.black),
                    Text(
                      widget.descricao,
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFF8FF04)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => widget.proxima),
                        );
                      },
                      child: Text(
                        'VER',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
