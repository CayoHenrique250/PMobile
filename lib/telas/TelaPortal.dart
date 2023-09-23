import 'package:flutter/material.dart';
import 'package:projeto/db/telaPortal_dao.dart';
import 'package:projeto/domain/Portal.dart';
import 'package:projeto/widgets/ContainerPortal.dart';
import 'package:projeto/widgets/ContainerPortalCard.dart';
import 'package:projeto/widgets/ContainerTopo.dart';
import 'package:projeto/widgets/CircularProgress.dart';

class TelaPortal extends StatefulWidget {
  const TelaPortal({super.key});

  @override
  State<TelaPortal> createState() => _TelaPortalState();
}

class _TelaPortalState extends State<TelaPortal> {
  @override
  Widget build(BuildContext context) {

    Future<List<PortalCard>> futureLista2 = PortalCardDao().findAll();
    Future<List<Portal>> futureLista = PortalDao().findAll();

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
            padding: const EdgeInsets.all(0.2),
            child: ListView(children: [
              const ContainerTopo(
                titulo: "Portal",
                heightGreen: 230,
                topWhite: 80,
                heightWhite: 100,
                widthWhite: 300,
                textLeft: 20,
                textTop: 115,
                fontSize: 30,
              ),
              const SizedBox(height: 16),
              FutureBuilder<List<PortalCard>>(
                  future: futureLista2,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      var lista = snapshot.data!;
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: lista.length,
                        itemBuilder: (context, index) {
                          return ContainerPortalCard(portalCard: lista[index]);
                        },
                      );
                    }

                    return const Center();
                  }),
              FutureBuilder<List<Portal>>(
                  future: futureLista,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      var lista = snapshot.data!;
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: lista.length,
                        itemBuilder: (context, index) {
                          return ContainerPortal(portal: lista[index]);
                        },
                      );
                    }

                    return const Center(child: CircularProgress());
                  }),
            ])),
      ),
    );
  }
}
