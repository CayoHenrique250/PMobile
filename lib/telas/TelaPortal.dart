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
    Future<List<Object>> futureLista = TelaPortalDao().findAll();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
            padding: const EdgeInsets.all(0.2),
            child: ListView(children: [
              ContainerTopo(
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

                        if (item is PortalCard) {
                          return ContainerPortalCard(portalCard: item);
                        } else if (item is Portal) {
                          return ContainerPortal(portal: item);
                        }

                        return Container(); // Retornar algo padrão caso o tipo não seja reconhecido
                      },
                    );
                  } else {
                    return const Center(child: Text('No data available.'));
                  }
                },
              ),
            ])),
      ),
    );
  }
}
