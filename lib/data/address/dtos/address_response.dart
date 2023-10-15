import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/domain/address/entity/address.dart';

import 'geometry_response.dart';

part 'address_response.g.dart';

@JsonSerializable(createToJson: false)
class AddressResponse extends Equatable {
  final GeometryResponse? geometry;
  final String? name;
  final String? address;

  const AddressResponse({
    this.geometry,
    this.name,
    this.address,
  });

  factory AddressResponse.fromJson(Map<String, dynamic> json) {
    return _$AddressResponseFromJson(json);
  }

  @override
  List<Object?> get props => [geometry, name, address];

  Address toEntity() {
    return Address(
      address: address,
      geometry: geometry?.toEntity(),
      name: name,
    );
  }
}
