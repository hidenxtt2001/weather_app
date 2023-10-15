import 'package:freezed_annotation/freezed_annotation.dart';

part 'geolocate.freezed.dart';

@freezed
class GeoLocate with _$GeoLocate {
  const factory GeoLocate({
    required double lat,
    required double lng,
  }) = _GeoLocate;
}
