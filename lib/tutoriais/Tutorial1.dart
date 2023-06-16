import 'package:flutter/material.dart';
import 'package:projeto/widgets/ContainerTextoTutoriais.dart';
import 'package:projeto/widgets/ContainerTituloTutorial.dart';
import 'package:projeto/widgets/ContainerTopo.dart';
import 'package:projeto/widgets/ContainerImagensTutoriais.dart';
import 'package:projeto/widgets/CircleBack.dart';

class Tutorial1 extends StatefulWidget {
  @override
  State<Tutorial1> createState() => _Tutorial1State();
}

class _Tutorial1State extends State<Tutorial1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
            padding: const EdgeInsets.all(0.2),
            child: ListView(children: [
              ContainerTopo(
                titulo: "Tartaruga com Garrafa Pet",
                heightGreen: 150,
                topWhite: 40,
                heightWhite: 60,
                widthWhite: 300,
                textLeft: 15,
                textTop: 60,
                fontSize: 20,
              ),
              buildVideo(),
              ContainerTituloTutorial(
                titulo: "Materiais:",
              ),
              ContainerTextoTutoriais(
                  texto:
                      "• Garrafa pet de 2 litros; \n • Emborrachado verde; \n • Caneta permanente (preto de preferência); \n • Pistola de cola quente; \n • Tesoura sem ponta; \n • Lápis; \n • Fita de cetim (opcional)."),
              ContainerTituloTutorial(
                titulo: "Como fazer?",
              ),
              ContainerTextoTutoriais(
                  texto:
                      "1- Com o lápis faça um molde do corpo da tartaruga no emborrachado e recorte com a tesoura;"),
              ContainerImagensTutoriais(
                  imagem: 'assets/imagens/tutorial1/imagem1.png'),
              ContainerTextoTutoriais(
                  texto:
                      "2- Corte com a tesoura a parte de baixo da garrafa onde está marcado com uma linha;"),
              ContainerImagensTutoriais(
                  imagem: 'assets/imagens/tutorial1/imagem2.png'),
              ContainerTextoTutoriais(
                  texto:
                      "3- Desenhe com a caneta permanente o rosto e as patinhas da tartaruga;"),
              ContainerImagensTutoriais(
                  imagem: 'assets/imagens/tutorial1/imagem3.png'),
              ContainerTextoTutoriais(
                  texto:
                      "4- Com a cola quente, cole a parte recortada da garrafa PET no corpo de EVA da tartaruga;"),
              ContainerImagensTutoriais(
                  imagem: 'assets/imagens/tutorial1/imagem4.png'),
              ContainerTextoTutoriais(
                  texto:
                      "5- Faça um laço com a fita colorida e decore a tartaruga (opcional);"),
              ContainerImagensTutoriais(
                  imagem: 'assets/imagens/tutorial1/imagem5.png'),
              ContainerTextoTutoriais(
                  texto:
                      "6- E está pronto! Agora é só deixar a criançada se divertir!"),
              ContainerImagensTutoriais(
                  imagem: 'assets/imagens/tutorial1/imagem6.png'),
              Text("\n\n\n"),
            ])),
        floatingActionButton: CircleBack(),
      ),
    );
  }
}

buildVideo() {
  return Padding(
    padding: EdgeInsets.all(86),
    child: Container(
      height: 150,
      child: Image.asset(
        'assets/imagens/video.png',
        fit: BoxFit.scaleDown,
      ),
    ),
  );
}
