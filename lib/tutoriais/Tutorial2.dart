import 'package:flutter/material.dart';
import 'package:projeto/widgets/tutoriais/ContainerTextoTutoriais.dart';
import 'package:projeto/widgets/tutoriais/ContainerTituloTutorial.dart';
import 'package:projeto/widgets/tutoriais/ContainerTopoTutorial.dart';
import 'package:projeto/widgets/tutoriais/ContainerImagensTutoriais.dart';
import 'package:projeto/telas/TelaTutoriais.dart';

class Tutorial2 extends StatefulWidget {
  const Tutorial2({super.key});

  @override
  State<Tutorial2> createState() => _Tutorial2State();
}

class _Tutorial2State extends State<Tutorial2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
            padding: const EdgeInsets.all(0.2),
            child: ListView(children: [
              ContainerTopoTutorial(
                titulo: "Porco espinho de revista",
              ),
              buildVideo(),
              ContainerTituloTutorial(
                titulo: "Materiais:",
              ),
              ContainerTextoTutoriais(
                  texto:
                      "• Papelão; \n• Revista; \n• Tesoura sem ponta; \n• Lápis; \n• Cola branca; \n• Caneta permanente."),
              ContainerTituloTutorial(
                titulo: "Como fazer?",
              ),
              ContainerTextoTutoriais(
                  texto:
                      "1- Com o lápis desenhe o molde do corpo do porco-espinho no papelão e recorte com a tesoura;"),
              ContainerImagensTutoriais(
                  imagem: 'assets/imagens/tutorial2/imagem1.png'),
              ContainerTextoTutoriais(
                  texto:
                      "2- Pegue a revista e recorte vários pedacinhos em formato de triângulos;"),
              ContainerImagensTutoriais(
                  imagem: 'assets/imagens/tutorial2/imagem2.png'),
              ContainerTextoTutoriais(
                  texto:
                      "3- Pegue a cola e cole os pedacinhos de papel no molde do porco-espinho, deixando só a parte do rosto livre, colocando as pontas dos triângulos para fora para parecerem espinhos;"),
              ContainerImagensTutoriais(
                  imagem: 'assets/imagens/tutorial2/imagem3.png'),
              ContainerTextoTutoriais(
                  texto:
                      "4- Enquanto espera secar, desenhe com o lápis piloto o rosto de porco-espinho;"),
              ContainerImagensTutoriais(
                  imagem: 'assets/imagens/tutorial2/imagem4.png'),
              ContainerTextoTutoriais(
                  texto:
                      "5- E está pronto! Agora é só deixar a criançada se divertir!"),
              ContainerImagensTutoriais(
                  imagem: 'assets/imagens/tutorial2/imagem5.png'),
              Text("\n\n\n"),
            ])),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xFF33691E),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TelaTutoriais()),
            );
          },
          child: const Icon(Icons.arrow_back),
        ),
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
