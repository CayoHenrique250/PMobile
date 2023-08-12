import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto/telas/TelaPerfil.dart';
import 'package:projeto/telas/TelaPortal.dart';
import 'package:projeto/telas/TelaSobre.dart';
import 'package:projeto/telas/TelaTutoriais.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  int selectedIndex = 0;
  var telas = const [
    TelaSobre(),
    TelaTutoriais(),
    TelaPortal(),
    TelaPerfil(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: telas[selectedIndex],
        bottomNavigationBar: Container(
          color: Color(0xff33691e),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: GNav(
            backgroundColor: Color(0xff33691e),
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.lightGreenAccent.shade700,
            gap: 8,
            onTabChange: (value) {
              setState(() {
                selectedIndex = value;
              });
            },
            padding: EdgeInsets.all(16),
            tabs: const [
              GButton(icon: CupertinoIcons.compass, text: 'Sobre'),
              GButton(icon: CupertinoIcons.scissors_alt, text: 'Tutoriais'),
              GButton(icon: CupertinoIcons.paperplane, text: 'Portal'),
              GButton(icon: CupertinoIcons.person, text: 'Perfil'),
            ],
          ),
        ),
      ),
    );
  }
}
