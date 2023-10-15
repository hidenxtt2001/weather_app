// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geometry_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeometryResponse _$GeometryResponseFromJson(Map<String, dynamic> json) =>
    GeometryResponse(
      location: json['location'] == null
          ? null
          : LocationResponse.fromJson(json['location'] as Map<String, dynamic>),
    );
