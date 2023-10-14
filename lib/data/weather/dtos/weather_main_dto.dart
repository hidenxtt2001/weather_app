import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/domain/weather/entity/weather_main.dart';

part 'weather_main_dto.g.dart';

@JsonSerializable(createToJson: false)
class WeatherMainDto extends Equatable {
  final double? temp;
  @JsonKey(name: 'feels_like')
  final double? feelsLike;
  @JsonKey(name: 'temp_min')
  final double? tempMin;
  @JsonKey(name: 'temp_max')
  final double? tempMax;
  final int? pressure;
  final int? humidity;

  const WeatherMainDto({
    this.temp,
    this.feelsLike,
    this.tempMin,
    this.tempMax,
    this.pressure,
    this.humidity,
  });

  factory WeatherMainDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherMainDtoFromJson(json);

  @override
  List<Object?> get props {
    return [
      temp,
      feelsLike,
      tempMin,
      tempMax,
      pressure,
      humidity,
    ];
  }

  WeatherMain toEntity() {
    return WeatherMain(
      feelsLike: feelsLike,
      humidity: humidity,
      pressure: pressure,
      temp: temp,
      tempMax: tempMax,
      tempMin: tempMin,
    );
  }
}
