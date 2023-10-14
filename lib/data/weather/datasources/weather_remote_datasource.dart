import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/data/weather/datasources/i_weather_datasource.dart';
import 'package:weather_app/data/weather/dtos/weather_dto.dart';

import '../dtos/weather_request.dart';

class WeatherRemoteDatasource implements IWeatherDatasource {
  final Dio weatherDio;

  WeatherRemoteDatasource({@Named("weatherDio") required this.weatherDio});
  @override
  Future<WeatherDto> getWeatherByLatLong(WeatherRequest request) async {
    final res = await weatherDio.get(
      '/weather',
      queryParameters: request.toJson()
        ..addAll(
          {
            "appid": "5e9c710ccee729a6d46a158cc155c982",
          },
        ),
    );
    return WeatherDto.fromJson(res.data);
  }
}
