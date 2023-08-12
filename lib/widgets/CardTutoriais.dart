//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:projeto/domain/tutoriais.dart';

class CardTutoriais extends StatefulWidget {
  final Tutoriais cardTutorias;

  const CardTutoriais({
    required this.cardTutorias,
    Key? key,
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
                    height: 220,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Color(widget.cardTutorias.cor),
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
                          image: AssetImage(widget.cardTutorias.imagem),
                        ),
                      ),
                    ))),
            Positioned(
              top: 40,
              left: 200,
              child: Container(
                height: 230,
                width: 170,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.cardTutorias.titulo,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(widget.cardTutorias.cor_titulo))),
                    Divider(color: Colors.black),
                    Text(
                      widget.cardTutorias.descricao,
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    SizedBox(height: 13),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFF8FF04)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  widget.cardTutorias.proxima),
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
