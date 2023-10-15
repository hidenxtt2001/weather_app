import 'package:freezed_annotation/freezed_annotation.dart';

import 'geometry.dart';

part 'address.freezed.dart';

@freezed
class Address with _$Address {
  const factory Address({
    Geometry? geometry,
    String? name,
    String? address,
  }) = _Address;
}
