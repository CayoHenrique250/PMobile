import 'package:flutter/material.dart';
import 'package:projeto/widgets/CardSobre.dart';
import 'package:projeto/widgets/ContainerTopo.dart';
import 'package:projeto/db/SobreDao.dart';
import 'package:projeto/domain/Sobre.dart';
import 'package:projeto/widgets/CircularProgress.dart';

class TelaSobre extends StatefulWidget {
  const TelaSobre({Key? key}) : super(key: key);

  @override
  State<TelaSobre> createState() => _TelaSobreState();
}

class _TelaSobreState extends State<TelaSobre> {
  Future<List<Sobre>> futureLista = SobreDao().findAll();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(1),
          child: ListView(children: [
            const ContainerTopo(
              titulo: "Sobre",
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
            FutureBuilder<List<Sobre>>(
                future: futureLista,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    var lista = snapshot.data!;
                    return ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: lista.length,
                      itemBuilder: (context, index) {
                        return CardSobre(
                          cardSobre: lista[index],
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
