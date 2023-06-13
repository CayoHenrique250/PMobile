import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:projeto/telas/TelaSobre.dart';
import 'package:projeto/telas/TelaTutoriais.dart';
import 'package:projeto/telas/TelaPerfil.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:projeto/widgets/ContainerTopo.dart';

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
              ContainerTopo(
                titulo: "Menu",
                heightGreen: 150,
                topWhite: 30,
                heightWhite: 60,
                widthWhite: 250,
                textLeft: 30,
                textTop: 45,
                fontSize: 27,
              ),
              buildbotoes(context),
            ])),
      ),
    );
  }
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
