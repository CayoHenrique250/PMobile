import 'package:flutter/material.dart';
import 'package:projeto/widgets/CardPerfilTitulo.dart';
import 'package:projeto/widgets/CardPerfilDados.dart';
import 'package:projeto/domain/Perfil.dart';
import 'package:projeto/db/PerfilDao.dart';
import 'package:projeto/widgets/CircularProgress.dart';

class TelaPerfil extends StatefulWidget {
  const TelaPerfil({super.key});

  @override
  State<TelaPerfil> createState() => _TelaPerfilState();
}

class _TelaPerfilState extends State<TelaPerfil> {
  Future<List<Perfil>> futureLista = PerfilDao().findAll();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Center(
              child: Stack(
                children: [
                  buildContainerBackground(context),
                  Positioned(
                    top: MediaQuery.of(context).size.height / 6 - (150 / 2),
                    left: MediaQuery.of(context).size.width / 2 - (150 / 2),
                    child: buildAvatar(),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            FutureBuilder<List<Perfil>>(
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
                      return Column(
                        children: [
                          CardPerfilTitulo(
                            perfil: lista[index],
                          ),
                          CardPerfilDados(
                            perfil: lista[index],
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  return const Center(child: Text('No data available.'));
                }
              },
            ),
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
                    Navigator.pop(context);
                  },
                  child: Text(
                    'SAIR',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildContainerBackground(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 3,
      decoration: BoxDecoration(
          color: Color(0xFF33691E),
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(16),
            bottomLeft: Radius.circular(16),
          )),
    );
  }

  buildAvatar() {
    return Container(
      width: 150,
      height: 150,
      child: CircleAvatar(
        backgroundImage: AssetImage(
          'assets/imagens/avatar.png',
        ),
      ),
      decoration: BoxDecoration(
        border: Border.all(width: 4, color: Colors.white),
        boxShadow: [
          BoxShadow(
            spreadRadius: 2,
            blurRadius: 10,
            color: Colors.black.withOpacity(0.1),
          )
        ],
        shape: BoxShape.circle,
      ),
    );
  }
}
