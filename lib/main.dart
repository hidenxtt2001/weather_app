import 'package:flutter/material.dart';
import 'package:weather_app/features/app/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const WeatherApp());
}
