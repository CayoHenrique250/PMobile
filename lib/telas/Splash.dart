import 'package:projeto/db/PerfilDao.dart';
import 'package:projeto/db/Shared_Preferences.dart';
import 'package:projeto/telas/TelaLogin.dart';
import 'package:projeto/telas/telaPrincipal.dart';
import 'package:flutter/material.dart';


class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  checkUserStatus() async {
    bool isLogged = await Preferences().getUser();
    String email = await Preferences().getUserEmail();

    PerfilDao.email = email;

    await Future.delayed(const Duration(seconds:  5));

    if (isLogged) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const TelaPrincipal();
          },
        ),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return  TelaLogin();
          },
        ),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    checkUserStatus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1C3509),
      body: Center(
        child: Image.asset('assets/imagens/applogo.png'),
      ),
    );
  }
}