import 'package:flutter/material.dart';
import 'package:weather_app/features/app/app.dart';

import 'di/injectable_dependencies.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.wait(
    [
      configureDependencies(),
    ],
  );
  runApp(const WeatherApp());
}
