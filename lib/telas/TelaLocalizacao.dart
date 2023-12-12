import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TelaLocalizacao extends StatefulWidget {
  LatLng latLng;

  TelaLocalizacao({super.key, required this.latLng});

  @override
  State<TelaLocalizacao> createState() => TelaLocalizacaoState();
}

class TelaLocalizacaoState extends State<TelaLocalizacao> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        markers: {
          Marker(
              markerId: MarkerId("${widget.latLng}"), position: widget.latLng),
        },
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: widget.latLng,
          zoom: 18,
        ),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }
}