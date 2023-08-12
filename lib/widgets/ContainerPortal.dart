import 'package:flutter/material.dart';
import 'package:projeto/domain/Portal.dart';
import 'package:url_launcher/url_launcher.dart';

class ContainerPortal extends StatelessWidget {
  final Portal portal;

  const ContainerPortal({
    Key? key,
    required this.portal,
  }) : super(key: key);

  Future<void> _launchUrl() async {
    if (await canLaunch(portal.url)) {
      await launch(portal.url);
    } else {
      throw Exception('Could not launch $portal.url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10, top: 25),
      height: 218, // Aumente a altura para acomodar o conteúdo
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFF33691E),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(80.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF33691E).withOpacity(0.3),
              offset: Offset(-10.0, 10.0),
              blurRadius: 20.0,
              spreadRadius: 4.0,
            ),
          ],
        ),
        padding: const EdgeInsets.only(
          left: 32,
          top: 50.0,
          bottom: 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Visite",
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              portal.titulo,
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: _launchUrl,
              child: Text(
                'ACESSAR',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
