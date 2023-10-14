import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_main.freezed.dart';

@freezed
class WeatherMain with _$WeatherMain {
  factory WeatherMain({
    double? temp,
    double? feelsLike,
    double? tempMin,
    double? tempMax,
    int? pressure,
    int? humidity,
  }) = _WeatherMain;
}
