import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'weather_request.g.dart';

@JsonSerializable(createFactory: false)
class WeatherRequest {
  final double lat;
  final double lon;
  const WeatherRequest({required this.lat, required this.lon});

  Map<String, dynamic> toJson() => _$WeatherRequestToJson(this);
}
