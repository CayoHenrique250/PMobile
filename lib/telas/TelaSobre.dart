import 'package:flutter/material.dart';
import 'package:projeto/widgets/CardConceito.dart';
import 'package:projeto/widgets/ContainerTopo.dart';
import 'TelaMenu.dart';

class TelaSobre extends StatefulWidget {
  const TelaSobre({Key? key}) : super(key: key);

  @override
  State<TelaSobre> createState() => _TelaSobreState();
}

class _TelaSobreState extends State<TelaSobre> {
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
                titulo: "Sobre", 
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
              CardConceito(
                  cor: 0xFFFFFFFF,
                  cor_titulo: 0xFF1B5E20,
                  imagem:
                      "https://static.vecteezy.com/ti/vetor-gratis/p3/17707999-ilustracao-do-conceito-de-sustentabilidade-ambiental-vetor.jpg",
                  titulo: "Sustentabilidade",
                  descricao:
                      "Sustentabilidade é a capacidade de cumprir com as necessidades do presente sem comprometer as mesmas das gerações futuras."),
              CardConceito(
                  cor: 0xFFCCFF90,
                  cor_titulo: 0xFF1B5E20,
                  imagem:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqbVJcy3DXSjg9vXueOXaSRGlHJcpb1FqFXw&usqp=CAU",
                  titulo: "Meio Ambiente",
                  descricao:
                      "O meio ambiente diz respeito ao conjunto de elementos e processos biológicos, químicos e físicos responsáveis pela vida no planeta Terra."),
              CardConceito(
                  cor: 0xFFFFFFFF,
                  cor_titulo: 0xFF1B5E20,
                  imagem:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmeP0ZNW8V5f4UJ_0lulg91SB6Dd48-ss5MUQTQ2lguLF_s0mOmp8gVFnZpRGEh0ryaHQ&usqp=CAU",
                  titulo: "Projeto TSMA",
                  descricao:
                      "Equipe:\n\nAmanda Fernandes;\nCayo Henrique;\nNatally Emanuelle e\nSilmara Nunes."),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xFF33691E),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TelaMenu()),
            );
          },
          child: const Icon(Icons.arrow_back),
        ),
      ),
    );
  }
}
