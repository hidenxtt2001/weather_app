import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/domain/weather/entity/coord.dart';

part 'coord_dto.g.dart';

@JsonSerializable(createToJson: false)
class CoordDto extends Equatable {
  final double? lon;
  final double? lat;

  const CoordDto({this.lon, this.lat});

  factory CoordDto.fromJson(Map<String, dynamic> json) =>
      _$CoordDtoFromJson(json);

  @override
  List<Object?> get props => [lon, lat];

  Coord toEntity() {
    return Coord(
      lat: lat,
      lon: lon,
    );
  }
}
