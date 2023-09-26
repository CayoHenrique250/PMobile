import 'package:flutter/material.dart';
import 'package:projeto/db/PerfilDao.dart';
import 'package:projeto/widgets/CircleBack.dart';
import 'package:flutter/cupertino.dart';
import 'package:projeto/widgets/ContainerTopo.dart';
import 'package:projeto/db/UserDao.dart';
import 'package:projeto/domain/user.dart';

class TelaCadastrar extends StatefulWidget {
  @override
  _TelaCadastrarState createState() => _TelaCadastrarState();
}

class _TelaCadastrarState extends State<TelaCadastrar> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController password2Controller = TextEditingController();
  TextEditingController idController = TextEditingController();
  TextEditingController nomeController = TextEditingController();
  TextEditingController ocupacaoController = TextEditingController();


  bool mostrarSenha = true;
  bool mostrarSenha2 = true;


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
                ContainerTopo(
                  titulo: "Cadastrar",
                  heightGreen: 150,
                  topWhite: 40,
                  heightWhite: 60,
                  widthWhite: 300,
                  textLeft: 15,
                  textTop: 60,
                  fontSize: 20,
                ),
                buildTextFild(),
                buildCadastrar(),
              ])),
          floatingActionButton: CircleBack()),
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
            controller: nomeController,
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
              labelText: ('Sobrenome'),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: ocupacaoController,
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
            controller: idController,
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
            controller: emailController,
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
            controller: passwordController,
            obscureText: mostrarSenha,
            onChanged: (Text) {
              senha = Text;
            },
            decoration: InputDecoration(
              labelText: 'Senha',
              suffixIcon: InkWell(
                    onTap: () {
                      setState(() {
                        mostrarSenha = !mostrarSenha;
                      });
                    },
                    child: mostrarSenha
                        ? Icon(CupertinoIcons.eye_fill)
                        : Icon(CupertinoIcons.eye_slash),
                  ),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: password2Controller,
            obscureText: mostrarSenha2,
            onChanged: (Text) {
              con_senha = Text;
            },
            decoration: InputDecoration(
              labelText: 'Confirmar senha',
                  suffixIcon: InkWell(
                    onTap: () {
                      setState(() {
                        mostrarSenha2 = !mostrarSenha2;
                      });
                    },
                    child: mostrarSenha2
                        ? Icon(CupertinoIcons.eye_fill)
                        : Icon(CupertinoIcons.eye_slash),
                  ),
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
            onPressed: () {
              onPressed(emailController, passwordController, password2Controller, idController, nomeController, ocupacaoController, context);
            },
            child: Text('CADASTRAR', style: TextStyle(color: Colors.white))),
      ),
    );
  }
}

Future<void> onPressed(TextEditingController emailController, TextEditingController passwordController, TextEditingController password2Controller, TextEditingController idController, TextEditingController nomeController, TextEditingController ocupacaoController, BuildContext context) async {
    String email = emailController.text;
    String password = passwordController.text;
    String password2 = password2Controller.text;
    String id = idController.text;
    String nome = nomeController.text;
    String ocupacao = ocupacaoController.text;


    if (password == password2) {
      User user = User(id: id, email: email, senha: password, nome: nome, ocupacao: ocupacao);
      UserDao().salvarUsuario(user: user);

      Navigator.pop(context);
    } else {
      final snackBar = SnackBar(
        content: Text('As senhas digitadas são diferentes!'),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  
}