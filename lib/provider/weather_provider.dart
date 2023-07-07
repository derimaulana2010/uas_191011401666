import 'package:flutter/material.dart';
import 'package:uas_191011401666/services/weather_services.dart';

class WeatherProvider extends ChangeNotifier {
  final _weather = WeatherService();
  bool isLoading = false;

  Future<void> getAllWeather() async {
    isLoading = true;
    notifyListeners();

    final response = await _weather.getAll();

    isLoading = false;
    notifyListeners();
  }
}
