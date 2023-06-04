import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:projeto/telas/TelaSobre.dart';
import 'package:projeto/telas/TelaTutoriais.dart';
import 'package:projeto/telas/TelaPerfil.dart';
import 'package:url_launcher/url_launcher.dart';

class TelaMenu extends StatefulWidget {
  @override
  _TelaMenuState createState() => _TelaMenuState();
}

class _TelaMenuState extends State<TelaMenu> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
            padding: const EdgeInsets.all(0.2),
            child: ListView(children: [
              buildContainerTopo(),
              buildbotoes(context),
            ])),
      ),
    );
  }
}

buildContainerTopo() {
  return Container(
    height: 150,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(65),
      ),
      color: Color(0xFF33691E),
    ),
    child: Stack(
      children: [
        Positioned(
            top: 30,
            left: 0,
            child: Container(
              height: 60,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  )),
            )),
        Positioned(
          left: 30,
          top: 50,
          child: Text("Menu",
              style: TextStyle(
                  fontSize: 27,
                  color: Color(0xFF33691E),
                  fontWeight: FontWeight.bold)),
        ),
      ],
    ),
  );
}

buildbotoes(BuildContext context) {
  final Uri _url = Uri.parse('https://tsma-912.github.io/Projeto_TSMA/');
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 35,
        ),
        Center(
          child: Container(
            margin: const EdgeInsets.all(20.0),
            width: 300.0,
            height: 48.0,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF5b874b), // Altere a cor aqui
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        20), // Altere o raio do arredondamento aqui
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TelaSobre()),
                  );
                },
                child: Text('SOBRE')),
          ),
        ),
        Center(
          child: Container(
            margin: const EdgeInsets.all(20.0),
            width: 300.0,
            height: 48.0,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF5b874b), // Altere a cor aqui
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        20), // Altere o raio do arredondamento aqui
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TelaTutoriais()),
                  );
                },
                child: Text('TUTORIAIS')),
          ),
        ),
        Center(
          child: Container(
            margin: const EdgeInsets.all(20.0),
            width: 300.0,
            height: 48.0,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF5b874b), // Altere a cor aqui
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        20), // Altere o raio do arredondamento aqui
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TelaPerfil()),
                  );
                },
                child: Text('PERFIL')),
          ),
        ),
        Center(
          child: Container(
            margin: const EdgeInsets.all(20.0),
            width: 300.0,
            height: 48.0,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF5b874b), // Altere a cor aqui
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        20), // Altere o raio do arredondamento aqui
                  ),
                ),
                onPressed: () {
                  _launchUrl();
                },
                child: Text('SITE')),
          ),
        ),
        Center(
          child: Container(
            margin: const EdgeInsets.all(20.0),
            width: 300.0,
            height: 48.0,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFD35443),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                  SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                },
                child: Text('SAIR')),
          ),
        ),
      ],
    ),
  );
}
