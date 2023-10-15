import 'package:flutter_test/flutter_test.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/data/geolocator/dtos/position_dto.dart';
import 'package:weather_app/domain/geolocator/entity/geolocate.dart';

void main() {
  test("should mapper to entity model", () {
    // Arrange
    const tPosition = Position(
      longitude: 1.0,
      latitude: 1.0,
      timestamp: null,
      accuracy: 0,
      altitude: 0,
      altitudeAccuracy: 0,
      heading: 0,
      headingAccuracy: 0,
      speed: 0,
      speedAccuracy: 0,
    );
    const tGeolocator = GeoLocate(lat: 1.0, lng: 1.0);
    // Acts
    final result = tPosition.toEnity();
    // Assert
    expect(result, tGeolocator);
  });
}
