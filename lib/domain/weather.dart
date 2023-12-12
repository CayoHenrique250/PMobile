class Weather{
  final double temperature_c;
  final double temperature_f;
  final String region;
  final String name;

  Weather({
    this.temperature_c = 0,
    this.temperature_f = 0,
    this.region = "",
    this.name = "",
  });

  factory Weather.fromJson(Map<String, dynamic> json){
    return Weather(
      temperature_c: json['current']['temp_c'],
      temperature_f: json['current']['temp_f'],
      region: json['location']['region'],
      name: json['location']['name'],
    );
  }
}