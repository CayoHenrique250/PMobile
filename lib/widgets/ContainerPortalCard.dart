import 'package:flutter/material.dart';
import 'package:projeto/domain/Portal.dart';

class ContainerPortalCard extends StatefulWidget {
  final PortalCard portalCard;

  const ContainerPortalCard({
    Key? key,
    required this.portalCard,
  }) : super(key: key);

  @override
  State<ContainerPortalCard> createState() => _ContainerPortalCardState();
}

class _ContainerPortalCardState extends State<ContainerPortalCard> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Container(
        height: 230,
        child: Stack(
          children: [
            Positioned(
              top: 35,
              left: 20,
              child: Material(
                child: Container(
                  height: 180.0,
                  width: width * 10.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(0.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.8),
                          offset: Offset(-10.0, 10.0),
                          blurRadius: 20.0,
                          spreadRadius: 4.0)
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
                top: 0,
                left: 30,
                child: Card(
                    elevation: 10.0,
                    shadowColor: Colors.grey.withOpacity(0.5), //
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Container(
                      height: 200,
                      width: 150,
                      child: Image.asset(
                        widget.portalCard.imagem,
                        fit: BoxFit.fill,
                      ),
                    ))),
            Positioned(
                top: 60,
                left: 200,
                child: Container(
                    height: 150,
                    width: 160,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sites Relacionados",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Divider(color: Colors.black),
                        Text(
                          "Sites Ambientais",
                          // "Os sites a seguir fornecem informações relevantes e educacionais sobre questões relacionadas ao meio ambiente, sustentabilidade, conservação e preservação dos recursos naturais.",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )))
          ],
        ));
  }
}
