import 'package:flutter/material.dart';
import 'TelaMenu.dart';

class TelaPerfil extends StatefulWidget {
  const TelaPerfil({super.key});

  @override
  State<TelaPerfil> createState() => _TelaPerfilState();
}

class _TelaPerfilState extends State<TelaPerfil> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(),
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
            buildColumnText(),
          ],
        ),
      ),
    );
  }

  buildColumnText() {
    return Column(
      children: [
        SizedBox(height: 20),
        Text(
          'Nome:',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w700,
            color: Colors.lightGreen,
          ),
        ),
        SizedBox(height: 14),
        Text(
          'Aluno',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 20),
        Text(
          'ID:',
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w700,
            color: Colors.lightGreen,
          ),
        ),
        SizedBox(height: 14),
        Text(
          '4002',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 20),
        Text(
          'Ocupação:',
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w700,
            color: Colors.lightGreen,
          ),
        ),
        SizedBox(height: 14),
        Text(
          'Estudante',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 8),
      ],
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
        backgroundImage: NetworkImage(
          'https://www.promoview.com.br/uploads/images/unnamed%2819%29.png',
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

  buildAppBar() {
    return AppBar(
      title: Text('Perfil'),
      backgroundColor: Color(0xFF33691E),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TelaMenu()),
          );
        },
      ),
    );
  }
}
