import 'package:freezed_annotation/freezed_annotation.dart';

part 'wind.freezed.dart';

@freezed
class Wind with _$Wind {
  factory Wind({
    double? speed,
    int? deg,
  }) = _Wind;
}
