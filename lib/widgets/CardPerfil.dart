import 'package:flutter/material.dart';
import 'package:projeto/domain/User.dart';
import 'package:projeto/telas/TelaFavoritos.dart';
import 'package:projeto/telas/TelaLogin.dart';

import 'package:projeto/widgets/TimeTracker.dart';

class CardPerfil extends StatefulWidget {
  final User perfil;

  const CardPerfil({
    Key? key,
    required this.perfil,
  }) : super(key: key);

  @override
  State<CardPerfil> createState() => _CardPerfilState();
}

class _CardPerfilState extends State<CardPerfil> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Text(
          'NOME',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w700,
            color: Colors.lightGreen,
          ),
        ),
        SizedBox(height: 14),
        Text(
          widget.perfil.nome,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 20),
        Text(
          'OCUPAÇÃO',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w700,
            color: Colors.lightGreen,
          ),
        ),
        SizedBox(height: 14),
        Text(
          widget.perfil.ocupacao,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 54),
        const Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              'ACESSE OS TUTORIAIS FAVORITOS:',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: Colors.lightGreen,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            margin: const EdgeInsets.all(35.0),
            width: 250,
            height: 35,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 80, 172, 107),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const TelaFavoritos();
                    },
                  ),
                );
              },
              child: Text(
                'FAVORITOS',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ),
        ),
        tutoriaisConcluidos(),
        Align(
          alignment: Alignment.center,
          child: Container(
            margin: const EdgeInsets.all(35.0),
            width: 250,
            height: 35,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFD35443),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return TelaLogin();
                    },
                  ),
                );
              },
              child: Text(
                'SAIR',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

tutoriaisConcluidos() {
  return Column(children: [
    const SizedBox(height: 5),
    const Padding(
      padding: EdgeInsets.only(left: 16.0),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Text(
          'TUTORIAIS CONCLUÍDOS:',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w700,
            color: Colors.lightGreen,
          ),
        ),
      ),
    ),
    Align(
      alignment: Alignment.center,
      child: Container(
          margin: const EdgeInsets.all(25.0),
          width: 360,
          height: 110,
          child: Wrap(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Tartaruga com Garrafa Pet:',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 95, 141, 43),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.all(15),
                child: LinearProgressIndicator(
                  value:
                      (TimeTracker.activeTimeInSeconds / 30.0).clamp(0.0, 1.0),
                  backgroundColor: const Color(0xFFCFCFCF),
                  valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
                  minHeight: 20.0,
                ),
              ),
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Porco espinho de revista:',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromARGB(255, 95, 141, 43),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.all(15),
                child: LinearProgressIndicator(
                  value: (TimeTracker2.activeTimeInSeconds2 / 30.0)
                      .clamp(0.0, 1.0),
                  backgroundColor: Color(0xFFCFCFCF),
                  valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
                  minHeight: 20.0,
                ),
              ),
            ],
          )),
    ),
  ]);
}
