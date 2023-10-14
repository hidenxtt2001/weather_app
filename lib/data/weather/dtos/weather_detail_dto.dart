import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/domain/weather/entity/weather_detail.dart';

part 'weather_detail_dto.g.dart';

@JsonSerializable(createToJson: false)
class WeatherDetailDto extends Equatable {
  final int? id;
  final String? main;
  final String? description;
  final String? icon;

  const WeatherDetailDto({this.id, this.main, this.description, this.icon});

  factory WeatherDetailDto.fromJson(Map<String, dynamic> json) {
    return _$WeatherDetailDtoFromJson(json);
  }

  @override
  List<Object?> get props => [id, main, description, icon];

  WeatherDetail toEntity() {
    return WeatherDetail(
      id: id,
      description: description,
      icon: icon,
      main: main,
    );
  }
}
