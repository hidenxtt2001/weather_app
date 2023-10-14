import 'package:weather_app/data/weather/dtos/weather_dto.dart';

import '../dtos/weather_request.dart';

abstract class IWeatherDatasource {
  Future<WeatherDto> getWeatherByLatLong(WeatherRequest request);
}
