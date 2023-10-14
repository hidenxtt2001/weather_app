import 'package:freezed_annotation/freezed_annotation.dart';

part 'sys.freezed.dart';

@freezed
class Sys with _$Sys {
  factory Sys({
    int? type,
    int? id,
    String? country,
    int? sunrise,
    int? sunset,
  }) = _Sys;
}
