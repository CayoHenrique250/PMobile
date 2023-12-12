import 'dart:convert';

import 'package:projeto/domain/weather.dart';
import 'package:http/http.dart' as http;


class WeatherService{
  Future<Weather> getWeatherData(String place) async{
    final queryParameters = {
      'key': 'ec7aa2c2a8df47828eb174328230912',
      'q': place,
    };
     final uri = Uri.http('api.weatherapi.com', '/v1/current.json', queryParameters);
     final response = await http.get(uri);
      if (response.statusCode == 200) {
         return Weather.fromJson(jsonDecode(response.body));
      }else{
        throw Exception("Não é possível exibir o tempo.");
      }
  }
}