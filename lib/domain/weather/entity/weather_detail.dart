import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_detail.freezed.dart';

@freezed
class WeatherDetail with _$WeatherDetail {
  factory WeatherDetail({
    int? id,
    String? main,
    String? description,
    String? icon,
  }) = _WeatherDetail;
}
