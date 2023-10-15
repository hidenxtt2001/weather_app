// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressResponse _$AddressResponseFromJson(Map<String, dynamic> json) =>
    AddressResponse(
      geometry: json['geometry'] == null
          ? null
          : GeometryResponse.fromJson(json['geometry'] as Map<String, dynamic>),
      name: json['name'] as String?,
      address: json['address'] as String?,
    );
