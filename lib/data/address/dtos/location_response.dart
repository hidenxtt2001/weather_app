import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/domain/address/entity/location.dart';

part 'location_response.g.dart';

@JsonSerializable(createToJson: false)
class LocationResponse extends Equatable {
  final double? lat;
  final double? lng;

  const LocationResponse({this.lat, this.lng});

  factory LocationResponse.fromJson(Map<String, dynamic> json) {
    return _$LocationResponseFromJson(json);
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [lat, lng];

  Location toEntity() {
    return Location(
      lat: lat,
      lng: lng,
    );
  }
}
