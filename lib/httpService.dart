import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:sampleflutterapp/weatherForecast.dart';

Future<WeatherForecast> fetchWeatherForecast(int dia) async {
  final response = await http.get(
      'http://meliplanetsweather.sa-east-1.elasticbeanstalk.com/clima?dia=' +
          dia.toString());

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return WeatherForecast.fromJson(json.decode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to retrieve weather forecast');
  }
}
