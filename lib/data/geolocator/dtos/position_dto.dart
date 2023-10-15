import 'package:geolocator/geolocator.dart';
import 'package:weather_app/domain/geolocator/entity/geolocate.dart';

extension PositionMapper on Position {
  GeoLocate toEnity() {
    return GeoLocate(lat: latitude, lng: longitude);
  }
}
