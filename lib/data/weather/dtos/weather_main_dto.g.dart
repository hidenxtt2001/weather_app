// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_main_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherMainDto _$WeatherMainDtoFromJson(Map<String, dynamic> json) =>
    WeatherMainDto(
      temp: (json['temp'] as num?)?.toDouble(),
      feelsLike: (json['feels_like'] as num?)?.toDouble(),
      tempMin: (json['temp_min'] as num?)?.toDouble(),
      tempMax: (json['temp_max'] as num?)?.toDouble(),
      pressure: json['pressure'] as int?,
      humidity: json['humidity'] as int?,
    );
