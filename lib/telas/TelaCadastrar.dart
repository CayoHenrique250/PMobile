import 'package:flutter/material.dart';
import 'package:projeto/widgets/tutoriais/ContainerTopoTutorial.dart';
import 'TelaLogin.dart';

class TelaCadastrar extends StatefulWidget {
  @override
  _TelaCadastrarState createState() => _TelaCadastrarState();
}

class _TelaCadastrarState extends State<TelaCadastrar> {
  String email = '';
  String senha = '';
  String con_senha = '';
  String nome = '';
  String sobrenome = '';
  String ocupacao = '';
  String id = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
            padding: const EdgeInsets.all(0.2),
            child: ListView(children: [
              ContainerTopoTutorial(titulo: "Cadastrar"),
              buildTextFild(),
              buildCadastrar(),
            ])),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xFF33691E),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TelaLogin()),
            );
          },
          child: const Icon(Icons.arrow_back),
        ),
      ),
    );
  }

  buildTextFild() {
    return Container(
      padding: EdgeInsets.only(left: 25, right: 25, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          TextField(
            onChanged: (Text) {
              nome = Text;
            },
            keyboardType: TextInputType.name,
            decoration: const InputDecoration(
              labelText: ('Nome'),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            onChanged: (Text) {
              sobrenome = Text;
            },
            keyboardType: TextInputType.name,
            decoration: const InputDecoration(
              labelText: ('Sobreome'),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            onChanged: (Text) {
              ocupacao = Text;
            },
            keyboardType: TextInputType.name,
            decoration: const InputDecoration(
              labelText: ('Ocupação'),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            onChanged: (Text) {
              id = Text;
            },
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: ('ID'),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            onChanged: (Text) {
              email = Text;
            },
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              labelText: ('Email ou usuário'),
              suffixIcon: Icon(Icons.alternate_email),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            obscureText: true,
            onChanged: (Text) {
              senha = Text;
            },
            decoration: InputDecoration(
              labelText: 'Senha',
              suffixIcon: Icon(Icons.visibility),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            obscureText: true,
            onChanged: (Text) {
              con_senha = Text;
            },
            decoration: InputDecoration(
              labelText: 'Confirmar senha',
              suffixIcon: Icon(Icons.visibility),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }

  buildCadastrar() {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(20.0),
        width: 200.0,
        height: 40.0,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF5b874b),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: () {},
            child: Text('CADASTRAR')),
      ),
    );
  }
}
