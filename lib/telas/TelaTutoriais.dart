import 'package:flutter/material.dart';
import 'package:projeto/db/TutoriaisDao.dart';
import 'package:projeto/domain/Tutoriais.dart';
import 'package:projeto/widgets/CardTutoriais.dart';
import 'package:projeto/widgets/ContainerTopo.dart';
import 'package:projeto/widgets/CircularProgress.dart';

class TelaTutoriais extends StatefulWidget {
  const TelaTutoriais({Key? key}) : super(key: key);
  @override
  State<TelaTutoriais> createState() => _TelaTutoriaisState();
}

class _TelaTutoriaisState extends State<TelaTutoriais> {
  Future<List<Tutoriais>> futureLista = TutoriaisDao().findAll();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(1),
          child: ListView(children: [
            const ContainerTopo(
              titulo: "Tutoriais",
              heightGreen: 230,
              topWhite: 80,
              heightWhite: 100,
              widthWhite: 300,
              textLeft: 20,
              textTop: 115,
              fontSize: 30,
            ),
            const SizedBox(
              height: 16,
            ),
            FutureBuilder<List<Tutoriais>>(
                future: futureLista,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    var lista = snapshot.data!;
                    return ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: lista.length,
                      itemBuilder: (context, index) {
                        return CardTutoriais(
                          cardTutorias: lista[index],
                          one: index,
                        );
                      },
                    );
                  }
                  return const Center(child: CircularProgress());
                }),
          ]),
        ),
      ),
    );
  }
}
