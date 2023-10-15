import 'package:freezed_annotation/freezed_annotation.dart';

import 'location.dart';

part 'geometry.freezed.dart';

@freezed
class Geometry with _$Geometry {
  const factory Geometry({
    Location? location,
  }) = _Geometry;
}
