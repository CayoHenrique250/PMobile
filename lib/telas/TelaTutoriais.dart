import 'package:flutter/material.dart';
import 'package:projeto/widgets/ContainerTopo.dart';
import 'package:projeto/widgets/CardTutoriais.dart';
import 'package:projeto/telas/TelaMenu.dart';
import 'package:projeto/tutoriais/Tutorial1.dart';
import 'package:projeto/tutoriais/Tutorial2.dart';
import 'package:projeto/widgets/CircleBack.dart';

class TelaTutoriais extends StatefulWidget {
  @override
  State<TelaTutoriais> createState() => _TelaTutoriaisState();
}

class _TelaTutoriaisState extends State<TelaTutoriais> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(1),
          child: ListView(
            children: [
              ContainerTopo(
                titulo: "Tutoriais",
                heightGreen: 230,
                topWhite: 80,
                heightWhite: 100,
                widthWhite: 300,
                textLeft: 20,
                textTop: 115,
                fontSize: 30,
              ),
              SizedBox(
                height: height * 0.05,
              ),
              CardTutoriais(
                cor: 0xFFFFFFFF,
                cor_titulo: 0xFF1B5E20,
                imagem:
                    "https://3.bp.blogspot.com/_S8O2nngfK6I/SrwGIpUu_pI/AAAAAAAAAuE/2wdqJaoerTs/w1200-h630-p-k-no-nu/tartaruga+de+garrafa+pet+2.jpg",
                titulo: "Tartarugas PET",
                descricao: "Tartarugas feitas com fundo de garrafa PET e EVA.",
                proxima: Tutorial1(),
              ),
              CardTutoriais(
                cor: 0xFFCCFF90,
                cor_titulo: 0xFF1B5E20,
                imagem:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWgL897twG21QpeLGxkWwCfMA9lN_JXJk5fg&usqp=CAU",
                titulo: "Porco espinho de revista",
                descricao: "Porco espinho de papelão e recortes de revistas.",
                proxima: Tutorial2(),
              ),
            ],
          ),
        ),
        floatingActionButton: CircleBack(),
      ),
    );
  }
}
