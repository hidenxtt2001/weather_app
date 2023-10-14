import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/domain/weather/entity/weather.dart';

import 'clouds_dto.dart';
import 'coord_dto.dart';
import 'weather_main_dto.dart';
import 'sys_dto.dart';
import 'weather_detail_dto.dart';
import 'wind_dto.dart';

part 'weather_dto.g.dart';

@JsonSerializable(createToJson: false)
class WeatherDto extends Equatable {
  final CoordDto? coord;
  final List<WeatherDetailDto>? weather;
  final String? base;
  final WeatherMainDto? main;
  final int? visibility;
  final WindDto? wind;
  final CloudsDto? clouds;
  final int? dt;
  final SysDto? sys;
  final int? timezone;
  final int? id;
  final String? name;
  final int? cod;

  const WeatherDto({
    this.coord,
    this.weather,
    this.base,
    this.main,
    this.visibility,
    this.wind,
    this.clouds,
    this.dt,
    this.sys,
    this.timezone,
    this.id,
    this.name,
    this.cod,
  });

  factory WeatherDto.fromJson(Map<String, dynamic> json) {
    return _$WeatherDtoFromJson(json);
  }

  @override
  List<Object?> get props {
    return [
      coord,
      weather,
      base,
      main,
      visibility,
      wind,
      clouds,
      dt,
      sys,
      timezone,
      id,
      name,
      cod,
    ];
  }

  Weather toEntity() {
    return Weather(
      base: base,
      clouds: clouds?.toEntity(),
      cod: cod,
      coord: coord?.toEntity(),
      dt: dt,
      id: id,
      main: main?.toEntity(),
      name: name,
      sys: sys?.toEntity(),
      timezone: timezone,
      visibility: visibility,
      weather: weather?.map((e) => e.toEntity()).toList(),
      wind: wind?.toEntity(),
    );
  }
}
