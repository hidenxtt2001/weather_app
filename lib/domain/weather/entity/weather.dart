import 'package:freezed_annotation/freezed_annotation.dart';

import 'clouds.dart';
import 'coord.dart';
import 'weather_main.dart';
import 'sys.dart';
import 'weather_detail.dart';
import 'wind.dart';

part 'weather.freezed.dart';

@freezed
class Weather with _$Weather {
  factory Weather({
    Coord? coord,
    List<WeatherDetail>? weather,
    String? base,
    WeatherMain? main,
    int? visibility,
    Wind? wind,
    Clouds? clouds,
    int? dt,
    Sys? sys,
    int? timezone,
    int? id,
    String? name,
    int? cod,
  }) = _Weather;
}
