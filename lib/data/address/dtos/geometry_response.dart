import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/domain/address/entity/geometry.dart';

import 'location_response.dart';

part 'geometry_response.g.dart';

@JsonSerializable(createToJson: false)
class GeometryResponse extends Equatable {
  final LocationResponse? location;

  const GeometryResponse({this.location});

  factory GeometryResponse.fromJson(Map<String, dynamic> json) {
    return _$GeometryResponseFromJson(json);
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [location];

  Geometry toEntity() {
    return Geometry(
      location: location?.toEntity(),
    );
  }
}
