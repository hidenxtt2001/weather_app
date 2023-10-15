import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/data/address/dtos/address_response.dart';
import 'package:weather_app/data/address/dtos/geometry_response.dart';
import 'package:weather_app/data/address/dtos/location_response.dart';
import 'package:weather_app/domain/address/entity/address.dart';
import 'package:weather_app/domain/address/entity/geometry.dart';
import 'package:weather_app/domain/address/entity/location.dart';

void main() {
  group("address response from json", () {
    const tAddressResponse = AddressResponse(
      address: 'P, Quận 12, Hồ Chí Minh 700000',
      geometry: GeometryResponse(
        location: LocationResponse(
          lat: 10.8271161,
          lng: 106.6039648,
        ),
      ),
      name: '2975 QL1A',
    );

    test("should parse from json", () async {
      // Arrange
      Map<String, dynamic> addressJson =
          jsonDecode(await File('test/resources/address.json').readAsString());
      // Acts
      AddressResponse dto = AddressResponse.fromJson(addressJson);
      // Assert
      expect(dto, tAddressResponse);
    });

    test("should mapper to entity model", () async {
      // Arrange
      const tAddress = Address(
        address: 'P, Quận 12, Hồ Chí Minh 700000',
        geometry: Geometry(
          location: Location(
            lat: 10.8271161,
            lng: 106.6039648,
          ),
        ),
        name: '2975 QL1A',
      );
      // Acts
      final result = tAddressResponse.toEntity();
      // Assert
      expect(result, tAddress);
    });
  });
}
