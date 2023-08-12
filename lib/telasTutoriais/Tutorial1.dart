import 'package:flutter/material.dart';
import 'package:projeto/widgets/ContainerTextoTutoriais.dart';
import 'package:projeto/widgets/ContainerTituloTutorial.dart';
import 'package:projeto/widgets/ContainerTopo.dart';
import 'package:projeto/widgets/ContainerImagensTutoriais.dart';
import 'package:projeto/widgets/CircleBack.dart';
import 'package:projeto/widgets/videoPlayerTutorial.dart';
import 'package:projeto/domain/tutorial.dart';
import 'package:projeto/db/tutorial1Dao.dart';
import 'package:projeto/widgets/CircularProgress.dart';

class Tutorial1 extends StatefulWidget {
  const Tutorial1({super.key});

  @override
  State<Tutorial1> createState() => _Tutorial1State();
}

class _Tutorial1State extends State<Tutorial1> {
  Future<List<Object>> futureLista = Tutorial1Dao().findAll();

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
              const SizedBox(height: 16),
              FutureBuilder<List<Object>>(
                future: futureLista,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgress());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else if (snapshot.hasData) {
                    var lista = snapshot.data!;
                    return ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: lista.length,
                      itemBuilder: (context, index) {
                        var item = lista[index];

                        if (item is TutorialTitulo) {
                          return ContainerTituloTutorial(tutorialTitulo: item);
                        } else if (item is TutorialTexto) {
                          return ContainerTextoTutoriais(tutorialTexto: item);
                        } else if (item is TutorialImagem) {
                          return ContainerImagensTutoriais(
                              tutorialImagem: item);
                        } else if (item is TutorialVideo) {
                          return VideoPlayerTutoriais(tutorialVideo: item);
                        }

                        return Container(); // Retornar algo padrão caso o tipo não seja reconhecido
                      },
                    );
                  } else {
                    return const Center(child: Text('No data available.'));
                  }
                },
              ),
              SizedBox(height: 56),
            ])),
        floatingActionButton: CircleBack(),
      ),
    );
  }
}
