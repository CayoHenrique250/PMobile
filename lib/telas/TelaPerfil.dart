import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:projeto/domain/user.dart';
import 'package:projeto/telas/TelaLogin.dart';
import 'package:projeto/widgets/Utils.dart';
import 'package:projeto/widgets/CardPerfil.dart';
import 'package:projeto/db/PerfilDao.dart';
import 'package:projeto/widgets/CircularProgress.dart';

class TelaPerfil extends StatefulWidget {
  const TelaPerfil({super.key});
  @override
  State<TelaPerfil> createState() => _TelaPerfilState();
}

class _TelaPerfilState extends State<TelaPerfil> {
  Uint8List? image;

  Future<User> futureLista = PerfilDao().findByEmail(PerfilDao.email);
  void selectImage() async {
    Uint8List img = await pickerImage(ImageSource.gallery);
    setState(() {
      image = img;
    });
  }

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
            FutureBuilder<User>(
                future: futureLista,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    var perfil = snapshot.data!;
                    return CardPerfil(
                      perfil: perfil,
                    );
                  }

                  return const Center(child: CircularProgress());
                }),
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
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return TelaLogin();
                        },
                      ),
                    );
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
    return Stack(
      children: [
        image != null
            ? CircleAvatar(
                backgroundImage: MemoryImage(image!),
                radius: 75,
              )
            : Positioned(
                child: Container(
                  width: 150,
                  height: 150,
                  child: const CircleAvatar(
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
                ),
              ),
        Positioned(
          child: IconButton(
            onPressed: selectImage,
            icon: Icon(Icons.add_a_photo),
          ),
          bottom: -10,
          left: 90,
        ),
      ],
    );
  }
}
