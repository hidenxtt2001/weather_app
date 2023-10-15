import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/data/weather/dtos/clouds_dto.dart';
import 'package:weather_app/data/weather/dtos/coord_dto.dart';
import 'package:weather_app/data/weather/dtos/sys_dto.dart';
import 'package:weather_app/data/weather/dtos/weather_detail_dto.dart';
import 'package:weather_app/data/weather/dtos/weather_dto.dart';
import 'package:weather_app/data/weather/dtos/weather_main_dto.dart';
import 'package:weather_app/data/weather/dtos/wind_dto.dart';
import 'package:weather_app/domain/weather/entity/clouds.dart';
import 'package:weather_app/domain/weather/entity/coord.dart';
import 'package:weather_app/domain/weather/entity/sys.dart';
import 'package:weather_app/domain/weather/entity/weather.dart';
import 'package:weather_app/domain/weather/entity/weather_detail.dart';
import 'package:weather_app/domain/weather/entity/weather_main.dart';
import 'package:weather_app/domain/weather/entity/wind.dart';

void main() {
  final file = File('test/resources/weather.json');
  group("weather dto fromJson", () {
    const tWeatherDto = WeatherDto(
      coord: CoordDto(
        lon: 106.6539,
        lat: 10.8762,
      ),
      weather: [
        WeatherDetailDto(
          id: 803,
          main: "Clouds",
          description: "broken clouds",
          icon: "04d",
        )
      ],
      base: "stations",
      main: WeatherMainDto(
        temp: 305.16,
        feelsLike: 312.16,
        tempMin: 305.16,
        tempMax: 305.16,
        pressure: 1011,
        humidity: 70,
      ),
      visibility: 9000,
      wind: WindDto(
        speed: 1.54,
        deg: 0,
      ),
      clouds: CloudsDto(all: 75),
      dt: 1697256366,
      sys: SysDto(
        type: 1,
        id: 9314,
        country: "VN",
        sunrise: 1697236926,
        sunset: 1697279801,
      ),
      timezone: 25200,
      id: 1565593,
      name: "Thong Tay Hoi",
      cod: 200,
    );
    test("decode to model fromJson", () async {
      // Arrange
      Map<String, dynamic> json = jsonDecode(await file.readAsString());
      // Acts
      final weatherModel = WeatherDto.fromJson(json);
      // Assert
      expect(weatherModel, tWeatherDto);
    });
    test("should mapper to entity model", () async {
      // Arrange
      final tWeather = Weather(
        coord: Coord(
          lon: 106.6539,
          lat: 10.8762,
        ),
        weather: [
          WeatherDetail(
            id: 803,
            main: "Clouds",
            description: "broken clouds",
            icon: "04d",
          )
        ],
        base: "stations",
        main: WeatherMain(
          temp: 305.16,
          feelsLike: 312.16,
          tempMin: 305.16,
          tempMax: 305.16,
          pressure: 1011,
          humidity: 70,
        ),
        visibility: 9000,
        wind: Wind(
          speed: 1.54,
          deg: 0,
        ),
        clouds: Clouds(all: 75),
        dt: 1697256366,
        sys: Sys(
          type: 1,
          id: 9314,
          country: "VN",
          sunrise: 1697236926,
          sunset: 1697279801,
        ),
        timezone: 25200,
        id: 1565593,
        name: "Thong Tay Hoi",
        cod: 200,
      );
      // Acts
      final weatherModel = tWeatherDto.toEntity();
      // Assert
      expect(weatherModel, tWeather);
    });
  });
}
