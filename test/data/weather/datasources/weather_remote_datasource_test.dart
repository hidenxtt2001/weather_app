import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:weather_app/data/weather/datasources/weather_remote_datasource.dart';
import 'package:weather_app/data/weather/dtos/weather_dto.dart';
import 'package:weather_app/data/weather/dtos/weather_request.dart';

void main() {
  late Dio dio;
  late DioAdapter dioAdapter;
  late WeatherRemoteDatasource weatherRemoteDatasource;
  setUp(() {
    dio = Dio();
    dioAdapter = DioAdapter(dio: dio, matcher: const UrlRequestMatcher());
    weatherRemoteDatasource = WeatherRemoteDatasource(weatherDio: dio);
  });
  group("Weather remote datasource", () {
    test("should get weather by lat long", () async {
      // Arrange
      final file = File('test/resources/weather.json');
      Map<String, dynamic> json = jsonDecode(await file.readAsString());
      const requestInput = WeatherRequest(lat: 0, lon: 1);
      const route = '/weather';
      dioAdapter.onGet(
        route,
        (server) => server.reply(200, json),
      );
      // Act
      final result =
          await weatherRemoteDatasource.getWeatherByLatLong(requestInput);
      // Assert
      expect(result, isA<WeatherDto>());
    });

    test("should should return exception", () async {
      const requestInput = WeatherRequest(lat: 0, lon: 1);
      // Arrange
      const route = '/weather';
      dioAdapter.onGet(
        route,
        (server) => server.throws(
          401,
          DioException(
            requestOptions: RequestOptions(),
            response: Response(
              requestOptions: RequestOptions(),
            ),
          ),
        ),
      );
      // Act
      final getWeatherByLatLong = weatherRemoteDatasource.getWeatherByLatLong;
      // Assert
      expect(() async => await getWeatherByLatLong.call(requestInput),
          throwsA(const TypeMatcher<DioException>()));
    });
  });
}
