import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/domain/weather/entity/wind.dart';

part 'wind_dto.g.dart';

@JsonSerializable(createToJson: false)
class WindDto extends Equatable {
  final double? speed;
  final int? deg;

  const WindDto({this.speed, this.deg});

  factory WindDto.fromJson(Map<String, dynamic> json) =>
      _$WindDtoFromJson(json);

  @override
  List<Object?> get props => [speed, deg];

  Wind toEntity() {
    return Wind(
      deg: deg,
      speed: speed,
    );
  }
}
