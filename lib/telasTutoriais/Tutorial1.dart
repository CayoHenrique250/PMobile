import 'package:flutter/material.dart';
import 'package:projeto/widgets/TutorialWidgetsBody.dart';
import 'package:projeto/widgets/ContainerTopo.dart';
import 'package:projeto/widgets/CircleBack.dart';
import 'package:projeto/widgets/TutorialWidgetsTop.dart';
import 'package:projeto/domain/tutorial.dart';
import 'package:projeto/db/Tutorial1Dao.dart';
import 'package:projeto/widgets/CircularProgress.dart';

import 'dart:async';
import 'package:projeto/widgets/TimeTracker.dart';

class Tutorial1 extends StatefulWidget {
  const Tutorial1({super.key});

  @override
  State<Tutorial1> createState() => _Tutorial1State();
}

class _Tutorial1State extends State<Tutorial1> {
  final ScrollController _scrollController = ScrollController();
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
    TimeTracker.reset();
    _startTimer();
  }

  void _scrollListener() {
    if (_scrollController.offset > 200) {
      setState(() {
        _isVisible = true;
      });
    } else {
      setState(() {
        _isVisible = false;
      });
    }
  }

  void _startTimer() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        TimeTracker.incrementTime();
      });
    });
  }

  Future<List<TutorialWidgets>> futureLista = TutorialWidgetsDao().findAll();
  Future<List<TutorialWidgetsTextImg>> futureLista2 =
      TutorialWidgetsTextImgDao().findAll();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
            padding: const EdgeInsets.all(0.2),
            child: Stack(
              children: [
                ListView(controller: _scrollController, children: [
                  const ContainerTopo(
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
                  FutureBuilder<List<TutorialWidgets>>(
                      future: futureLista,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          var lista = snapshot.data!;
                          return ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: lista.length,
                            itemBuilder: (context, index) {
                              return TutorialWidgetsTop(
                                  tutorialWidgets: lista[index]);
                            },
                          );
                        }

                        return const Center();
                      }),
                  FutureBuilder<List<TutorialWidgetsTextImg>>(
                      future: futureLista2,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          var lista = snapshot.data!;
                          return ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: lista.length,
                            itemBuilder: (context, index) {
                              return TutorialWidgetsBody(
                                  tutorialWidgetsBody: lista[index]);
                            },
                          );
                        }

                        return const Center(child: CircularProgress());
                      }),
                  const SizedBox(height: 56),
                ]),
                if (_isVisible)
                  Positioned(
                    bottom: 20,
                    left: 135,
                    child: GestureDetector(
                      onTap: () {
                        _scrollController.animateTo(0,
                            duration: const Duration(seconds: 1),
                            curve: Curves.easeInOut);
                      },
                      child: Container(
                        width: 140,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.lime,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: const Center(
                          child: Text(
                            "Voltar ao topo",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            )),
        floatingActionButton: const CircleBack(),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }
}
