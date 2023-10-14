import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/domain/weather/entity/clouds.dart';

part 'clouds_dto.g.dart';

@JsonSerializable(createToJson: false)
class CloudsDto extends Equatable {
  final int? all;

  const CloudsDto({this.all});

  factory CloudsDto.fromJson(Map<String, dynamic> json) {
    return _$CloudsDtoFromJson(json);
  }

  @override
  List<Object?> get props => [all];

  Clouds toEntity() {
    return Clouds(
      all: all,
    );
  }
}
