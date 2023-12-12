import 'dart:async';

import 'package:flutter/material.dart';
import 'package:projeto/bloc/favoritos_cubit.dart';
import 'package:projeto/domain/tutoriais.dart';
import 'package:projeto/telas/TelaTutoriais.dart';
import 'package:projeto/widgets/CircleBack.dart';
import 'package:projeto/widgets/CircularProgress.dart';
import 'package:projeto/widgets/ContainerTopo.dart';
import 'package:projeto/widgets/CardTutoriais.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TelaFavoritos extends StatefulWidget {
  const TelaFavoritos({super.key});

  @override
  State<TelaFavoritos> createState() => _TelaFavoritosState();
}

class _TelaFavoritosState extends State<TelaFavoritos> {
  bool showProgress = true;

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
    
      setState(() {
        showProgress = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(1),
          child: ListView(children: [
            const ContainerTopo(
              titulo: "Favoritos",
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
            BlocBuilder<FavoritosCubit, List<Tutoriais>>(
              builder: (context, state) {
                var lista = state;

                if (lista.isNotEmpty) {
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
            
                return Center(
                  child: showProgress
                  ? CircularProgress()
                  : Text(
                    'Você não possui favoritos!',
                    style: TextStyle(fontSize: 20),
                  ),
                );
              },
            ),
          ]),
        ),
        floatingActionButton: CircleBack(),
      ),
    );
  }
}
