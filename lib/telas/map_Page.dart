import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  final LatLng latLng;

  const MapPage({super.key, required this.latLng});

  @override
  State<MapPage> createState() => MapPageState();
}

class MapPageState extends State<MapPage> {
  final Completer<GoogleMapController> _controller = Completer<GoogleMapController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        markers: {
          Marker(
              markerId: MarkerId("${widget.latLng}"), 
              icon: BitmapDescriptor.defaultMarker,
              position: widget.latLng),
        },
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: widget.latLng,
          zoom: 13,
        ),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }
}