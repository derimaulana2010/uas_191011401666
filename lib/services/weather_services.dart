import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:uas_191011401666/model/WeatherModel.dart';

class WeatherService {
  Future<void> getAll() async {
    const url =
        'https://api.openweathermap.org/data/2.5/weather?q=Jakarta&appid=0e8c9edb0ff7449e1daf091511a68d1c&units=metric';
    final uri = Uri.parse(url);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      Map<String, dynamic>? data =
          jsonDecode(response.body) as Map<String, dynamic>;
      print(data);
    } else {}
  }
}
