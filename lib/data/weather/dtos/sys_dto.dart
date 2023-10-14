import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/domain/weather/entity/sys.dart';

part 'sys_dto.g.dart';

@JsonSerializable(createToJson: false)
class SysDto extends Equatable {
  final int? type;
  final int? id;
  final String? country;
  final int? sunrise;
  final int? sunset;

  const SysDto({this.type, this.id, this.country, this.sunrise, this.sunset});

  factory SysDto.fromJson(Map<String, dynamic> json) {
    return _$SysDtoFromJson(json);
  }

  @override
  List<Object?> get props => [type, id, country, sunrise, sunset];

  Sys toEntity() {
    return Sys(
      type: type,
      id: id,
      country: country,
      sunrise: sunrise,
      sunset: sunset,
    );
  }
}
