import 'package:flutter/material.dart';
import '../domain/Sobre.dart';

class CardSobre extends StatefulWidget {
  final Sobre cardSobre;

  const CardSobre({
    Key? key,
    required this.cardSobre,
  }) : super(key: key);

  @override
  State<CardSobre> createState() => _CardSobreState();
}

class _CardSobreState extends State<CardSobre> {
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
                      color: Color(int.parse(widget.cardSobre.cor)),
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
                          image: AssetImage(widget.cardSobre.imagem),
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
                    Text(widget.cardSobre.titulo,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color:
                                Color(int.parse(widget.cardSobre.cor_titulo)))),
                    Divider(color: Colors.black),
                    Text(
                      widget.cardSobre.descricao,
                      style: TextStyle(fontSize: 13, color: Colors.black),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
