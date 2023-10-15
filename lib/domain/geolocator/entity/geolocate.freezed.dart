// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geolocate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GeoLocate {
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GeoLocateCopyWith<GeoLocate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoLocateCopyWith<$Res> {
  factory $GeoLocateCopyWith(GeoLocate value, $Res Function(GeoLocate) then) =
      _$GeoLocateCopyWithImpl<$Res, GeoLocate>;
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class _$GeoLocateCopyWithImpl<$Res, $Val extends GeoLocate>
    implements $GeoLocateCopyWith<$Res> {
  _$GeoLocateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_value.copyWith(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeoLocateImplCopyWith<$Res>
    implements $GeoLocateCopyWith<$Res> {
  factory _$$GeoLocateImplCopyWith(
          _$GeoLocateImpl value, $Res Function(_$GeoLocateImpl) then) =
      __$$GeoLocateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class __$$GeoLocateImplCopyWithImpl<$Res>
    extends _$GeoLocateCopyWithImpl<$Res, _$GeoLocateImpl>
    implements _$$GeoLocateImplCopyWith<$Res> {
  __$$GeoLocateImplCopyWithImpl(
      _$GeoLocateImpl _value, $Res Function(_$GeoLocateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_$GeoLocateImpl(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$GeoLocateImpl implements _GeoLocate {
  const _$GeoLocateImpl({required this.lat, required this.lng});

  @override
  final double lat;
  @override
  final double lng;

  @override
  String toString() {
    return 'GeoLocate(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeoLocateImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeoLocateImplCopyWith<_$GeoLocateImpl> get copyWith =>
      __$$GeoLocateImplCopyWithImpl<_$GeoLocateImpl>(this, _$identity);
}

abstract class _GeoLocate implements GeoLocate {
  const factory _GeoLocate(
      {required final double lat, required final double lng}) = _$GeoLocateImpl;

  @override
  double get lat;
  @override
  double get lng;
  @override
  @JsonKey(ignore: true)
  _$$GeoLocateImplCopyWith<_$GeoLocateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
