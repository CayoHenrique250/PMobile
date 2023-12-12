import 'package:flutter/material.dart';
import 'package:projeto/db/weather_api.dart';
import 'package:projeto/domain/weather.dart';
import 'package:projeto/widgets/ContainerTopo.dart';
import 'package:projeto/telas/map_Page.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TelaWeather extends StatefulWidget {
  const TelaWeather({Key? key}) : super(key: key);

  @override
  State<TelaWeather> createState() => _TelaWeatherState();
}

class _TelaWeatherState extends State<TelaWeather> {
  TextEditingController qController = TextEditingController();
  String q = "";
  WeatherService weatherService = WeatherService();
  Weather weather = Weather();
  String region = "";
  String name = "";
  double tempC = 0;
  double tempF = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(1),
          child: ListView(children: [
            const ContainerTopo(
              titulo: "Tempo",
              heightGreen: 230,
              topWhite: 80,
              heightWhite: 100,
              widthWhite: 300,
              textLeft: 20,
              textTop: 115,
              fontSize: 25,
            ),
            const SizedBox(
              height: 16,
            ),
           Container(
              padding: EdgeInsets.only(left: 25, right: 25, top: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    controller: qController,
                    onChanged: (Text) {
                      q = Text;
                    },
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(
                      labelText: ('Cidade'),
                      suffixIcon: Icon(Icons.map_outlined),
                      border: OutlineInputBorder(),
                    ),
                  ),
               Center(
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
                            onPressed();
                          },
                          child: Text(
                            'PESQUISAR',
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                ),
                Center(
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
                            onPressedMapa();
                          },
                          child: Text(
                            'VER NO MAPA',
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                ),
                Center(
                  child: Container(
                    height: 270,
                    child: Stack(
                      children: [
                        Positioned(
                            top: 35,
                            left: 20,
                            right: 20,
                            child: Material(
                              child: Container(
                                height: 200,
                                width: 350,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(0.0),
                                  boxShadow: [
                                    new BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      spreadRadius: 4,
                                      blurRadius: 20,
                                      offset: Offset(-10, 10),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                        
                        Center(
                          child: Positioned(
                          top: 40,
                          left: 200,
                          child: Container(
                            height: 200,
                            width: 170,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Temperatura",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Colors.green)),
                                SizedBox(height: 5),
                                Divider(color: Colors.black),
                                SizedBox(height: 8),
                                Text(tempF.toString() + "°F", style: TextStyle(fontSize: 20, color: Colors.black),),
                                SizedBox(height: 5),
                                Text(tempC.toString() + "°C", style: TextStyle(fontSize: 20, color: Colors.black),),
                                SizedBox(height: 5),
                                Text(name, style: TextStyle(fontSize: 20, color: Colors.black),),
                                Text(region, style: TextStyle(fontSize: 15, color: Colors.black),),
                              ],
                            ),
                          ),
                        )),
                      ],)))]))]))));
  }
  

   Future<void> onPressed() async {
            String q = qController.text;
            weather = await weatherService.getWeatherData(q);
            setState(() {
              name = weather.name;
              region = weather.region;
              tempF = weather.temperature_f;
              tempC = weather.temperature_c;
            });
              
  }
  
  Future<void> onPressedMapa() async {
    String q = qController.text;
    List<Location> locations = await locationFromAddress(q);
    LatLng latLng = LatLng(locations[0].latitude, locations[0].longitude);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return MapPage(latLng: latLng);
        },
      ),
    );
  }
}

