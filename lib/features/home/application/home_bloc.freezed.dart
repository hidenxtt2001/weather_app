// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  Status get status => throw _privateConstructorUsedError;
  Weather? get weather => throw _privateConstructorUsedError;
  double? get lat => throw _privateConstructorUsedError;
  double? get lng => throw _privateConstructorUsedError;
  String? get input => throw _privateConstructorUsedError;
  bool get firstRun => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {Status status,
      Weather? weather,
      double? lat,
      double? lng,
      String? input,
      bool firstRun});

  $StatusCopyWith<$Res> get status;
  $WeatherCopyWith<$Res>? get weather;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? weather = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? input = freezed,
    Object? firstRun = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      weather: freezed == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
      input: freezed == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String?,
      firstRun: null == firstRun
          ? _value.firstRun
          : firstRun // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get status {
    return $StatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherCopyWith<$Res>? get weather {
    if (_value.weather == null) {
      return null;
    }

    return $WeatherCopyWith<$Res>(_value.weather!, (value) {
      return _then(_value.copyWith(weather: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status,
      Weather? weather,
      double? lat,
      double? lng,
      String? input,
      bool firstRun});

  @override
  $StatusCopyWith<$Res> get status;
  @override
  $WeatherCopyWith<$Res>? get weather;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? weather = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? input = freezed,
    Object? firstRun = null,
  }) {
    return _then(_$HomeStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      weather: freezed == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
      input: freezed == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String?,
      firstRun: null == firstRun
          ? _value.firstRun
          : firstRun // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {this.status = const Status.idle(),
      this.weather,
      this.lat,
      this.lng,
      this.input,
      this.firstRun = true});

  @override
  @JsonKey()
  final Status status;
  @override
  final Weather? weather;
  @override
  final double? lat;
  @override
  final double? lng;
  @override
  final String? input;
  @override
  @JsonKey()
  final bool firstRun;

  @override
  String toString() {
    return 'HomeState(status: $status, weather: $weather, lat: $lat, lng: $lng, input: $input, firstRun: $firstRun)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.weather, weather) || other.weather == weather) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.input, input) || other.input == input) &&
            (identical(other.firstRun, firstRun) ||
                other.firstRun == firstRun));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, weather, lat, lng, input, firstRun);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final Status status,
      final Weather? weather,
      final double? lat,
      final double? lng,
      final String? input,
      final bool firstRun}) = _$HomeStateImpl;

  @override
  Status get status;
  @override
  Weather? get weather;
  @override
  double? get lat;
  @override
  double? get lng;
  @override
  String? get input;
  @override
  bool get firstRun;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function() onLoadWeather,
    required TResult Function(String input) onChangeInputLocation,
    required TResult Function() onSearchFromInputLocation,
    required TResult Function() onLoadWeatherFromCurrentLocate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function()? onLoadWeather,
    TResult? Function(String input)? onChangeInputLocation,
    TResult? Function()? onSearchFromInputLocation,
    TResult? Function()? onLoadWeatherFromCurrentLocate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function()? onLoadWeather,
    TResult Function(String input)? onChangeInputLocation,
    TResult Function()? onSearchFromInputLocation,
    TResult Function()? onLoadWeatherFromCurrentLocate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeEventOnStarted value) onStarted,
    required TResult Function(HomeEventOnLoadWeather value) onLoadWeather,
    required TResult Function(HomeEventOnChangeInputLocation value)
        onChangeInputLocation,
    required TResult Function(HomeEventOnSearchFromInputLocation value)
        onSearchFromInputLocation,
    required TResult Function(HomeEventOnLoadWeatherFromCurrentLocate value)
        onLoadWeatherFromCurrentLocate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeEventOnStarted value)? onStarted,
    TResult? Function(HomeEventOnLoadWeather value)? onLoadWeather,
    TResult? Function(HomeEventOnChangeInputLocation value)?
        onChangeInputLocation,
    TResult? Function(HomeEventOnSearchFromInputLocation value)?
        onSearchFromInputLocation,
    TResult? Function(HomeEventOnLoadWeatherFromCurrentLocate value)?
        onLoadWeatherFromCurrentLocate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventOnStarted value)? onStarted,
    TResult Function(HomeEventOnLoadWeather value)? onLoadWeather,
    TResult Function(HomeEventOnChangeInputLocation value)?
        onChangeInputLocation,
    TResult Function(HomeEventOnSearchFromInputLocation value)?
        onSearchFromInputLocation,
    TResult Function(HomeEventOnLoadWeatherFromCurrentLocate value)?
        onLoadWeatherFromCurrentLocate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HomeEventOnStartedImplCopyWith<$Res> {
  factory _$$HomeEventOnStartedImplCopyWith(_$HomeEventOnStartedImpl value,
          $Res Function(_$HomeEventOnStartedImpl) then) =
      __$$HomeEventOnStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeEventOnStartedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeEventOnStartedImpl>
    implements _$$HomeEventOnStartedImplCopyWith<$Res> {
  __$$HomeEventOnStartedImplCopyWithImpl(_$HomeEventOnStartedImpl _value,
      $Res Function(_$HomeEventOnStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeEventOnStartedImpl implements HomeEventOnStarted {
  const _$HomeEventOnStartedImpl();

  @override
  String toString() {
    return 'HomeEvent.onStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeEventOnStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function() onLoadWeather,
    required TResult Function(String input) onChangeInputLocation,
    required TResult Function() onSearchFromInputLocation,
    required TResult Function() onLoadWeatherFromCurrentLocate,
  }) {
    return onStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function()? onLoadWeather,
    TResult? Function(String input)? onChangeInputLocation,
    TResult? Function()? onSearchFromInputLocation,
    TResult? Function()? onLoadWeatherFromCurrentLocate,
  }) {
    return onStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function()? onLoadWeather,
    TResult Function(String input)? onChangeInputLocation,
    TResult Function()? onSearchFromInputLocation,
    TResult Function()? onLoadWeatherFromCurrentLocate,
    required TResult orElse(),
  }) {
    if (onStarted != null) {
      return onStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeEventOnStarted value) onStarted,
    required TResult Function(HomeEventOnLoadWeather value) onLoadWeather,
    required TResult Function(HomeEventOnChangeInputLocation value)
        onChangeInputLocation,
    required TResult Function(HomeEventOnSearchFromInputLocation value)
        onSearchFromInputLocation,
    required TResult Function(HomeEventOnLoadWeatherFromCurrentLocate value)
        onLoadWeatherFromCurrentLocate,
  }) {
    return onStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeEventOnStarted value)? onStarted,
    TResult? Function(HomeEventOnLoadWeather value)? onLoadWeather,
    TResult? Function(HomeEventOnChangeInputLocation value)?
        onChangeInputLocation,
    TResult? Function(HomeEventOnSearchFromInputLocation value)?
        onSearchFromInputLocation,
    TResult? Function(HomeEventOnLoadWeatherFromCurrentLocate value)?
        onLoadWeatherFromCurrentLocate,
  }) {
    return onStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventOnStarted value)? onStarted,
    TResult Function(HomeEventOnLoadWeather value)? onLoadWeather,
    TResult Function(HomeEventOnChangeInputLocation value)?
        onChangeInputLocation,
    TResult Function(HomeEventOnSearchFromInputLocation value)?
        onSearchFromInputLocation,
    TResult Function(HomeEventOnLoadWeatherFromCurrentLocate value)?
        onLoadWeatherFromCurrentLocate,
    required TResult orElse(),
  }) {
    if (onStarted != null) {
      return onStarted(this);
    }
    return orElse();
  }
}

abstract class HomeEventOnStarted implements HomeEvent {
  const factory HomeEventOnStarted() = _$HomeEventOnStartedImpl;
}

/// @nodoc
abstract class _$$HomeEventOnLoadWeatherImplCopyWith<$Res> {
  factory _$$HomeEventOnLoadWeatherImplCopyWith(
          _$HomeEventOnLoadWeatherImpl value,
          $Res Function(_$HomeEventOnLoadWeatherImpl) then) =
      __$$HomeEventOnLoadWeatherImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeEventOnLoadWeatherImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeEventOnLoadWeatherImpl>
    implements _$$HomeEventOnLoadWeatherImplCopyWith<$Res> {
  __$$HomeEventOnLoadWeatherImplCopyWithImpl(
      _$HomeEventOnLoadWeatherImpl _value,
      $Res Function(_$HomeEventOnLoadWeatherImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeEventOnLoadWeatherImpl implements HomeEventOnLoadWeather {
  const _$HomeEventOnLoadWeatherImpl();

  @override
  String toString() {
    return 'HomeEvent.onLoadWeather()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeEventOnLoadWeatherImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function() onLoadWeather,
    required TResult Function(String input) onChangeInputLocation,
    required TResult Function() onSearchFromInputLocation,
    required TResult Function() onLoadWeatherFromCurrentLocate,
  }) {
    return onLoadWeather();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function()? onLoadWeather,
    TResult? Function(String input)? onChangeInputLocation,
    TResult? Function()? onSearchFromInputLocation,
    TResult? Function()? onLoadWeatherFromCurrentLocate,
  }) {
    return onLoadWeather?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function()? onLoadWeather,
    TResult Function(String input)? onChangeInputLocation,
    TResult Function()? onSearchFromInputLocation,
    TResult Function()? onLoadWeatherFromCurrentLocate,
    required TResult orElse(),
  }) {
    if (onLoadWeather != null) {
      return onLoadWeather();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeEventOnStarted value) onStarted,
    required TResult Function(HomeEventOnLoadWeather value) onLoadWeather,
    required TResult Function(HomeEventOnChangeInputLocation value)
        onChangeInputLocation,
    required TResult Function(HomeEventOnSearchFromInputLocation value)
        onSearchFromInputLocation,
    required TResult Function(HomeEventOnLoadWeatherFromCurrentLocate value)
        onLoadWeatherFromCurrentLocate,
  }) {
    return onLoadWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeEventOnStarted value)? onStarted,
    TResult? Function(HomeEventOnLoadWeather value)? onLoadWeather,
    TResult? Function(HomeEventOnChangeInputLocation value)?
        onChangeInputLocation,
    TResult? Function(HomeEventOnSearchFromInputLocation value)?
        onSearchFromInputLocation,
    TResult? Function(HomeEventOnLoadWeatherFromCurrentLocate value)?
        onLoadWeatherFromCurrentLocate,
  }) {
    return onLoadWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventOnStarted value)? onStarted,
    TResult Function(HomeEventOnLoadWeather value)? onLoadWeather,
    TResult Function(HomeEventOnChangeInputLocation value)?
        onChangeInputLocation,
    TResult Function(HomeEventOnSearchFromInputLocation value)?
        onSearchFromInputLocation,
    TResult Function(HomeEventOnLoadWeatherFromCurrentLocate value)?
        onLoadWeatherFromCurrentLocate,
    required TResult orElse(),
  }) {
    if (onLoadWeather != null) {
      return onLoadWeather(this);
    }
    return orElse();
  }
}

abstract class HomeEventOnLoadWeather implements HomeEvent {
  const factory HomeEventOnLoadWeather() = _$HomeEventOnLoadWeatherImpl;
}

/// @nodoc
abstract class _$$HomeEventOnChangeInputLocationImplCopyWith<$Res> {
  factory _$$HomeEventOnChangeInputLocationImplCopyWith(
          _$HomeEventOnChangeInputLocationImpl value,
          $Res Function(_$HomeEventOnChangeInputLocationImpl) then) =
      __$$HomeEventOnChangeInputLocationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String input});
}

/// @nodoc
class __$$HomeEventOnChangeInputLocationImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeEventOnChangeInputLocationImpl>
    implements _$$HomeEventOnChangeInputLocationImplCopyWith<$Res> {
  __$$HomeEventOnChangeInputLocationImplCopyWithImpl(
      _$HomeEventOnChangeInputLocationImpl _value,
      $Res Function(_$HomeEventOnChangeInputLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
  }) {
    return _then(_$HomeEventOnChangeInputLocationImpl(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HomeEventOnChangeInputLocationImpl
    implements HomeEventOnChangeInputLocation {
  const _$HomeEventOnChangeInputLocationImpl({required this.input});

  @override
  final String input;

  @override
  String toString() {
    return 'HomeEvent.onChangeInputLocation(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeEventOnChangeInputLocationImpl &&
            (identical(other.input, input) || other.input == input));
  }

  @override
  int get hashCode => Object.hash(runtimeType, input);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeEventOnChangeInputLocationImplCopyWith<
          _$HomeEventOnChangeInputLocationImpl>
      get copyWith => __$$HomeEventOnChangeInputLocationImplCopyWithImpl<
          _$HomeEventOnChangeInputLocationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function() onLoadWeather,
    required TResult Function(String input) onChangeInputLocation,
    required TResult Function() onSearchFromInputLocation,
    required TResult Function() onLoadWeatherFromCurrentLocate,
  }) {
    return onChangeInputLocation(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function()? onLoadWeather,
    TResult? Function(String input)? onChangeInputLocation,
    TResult? Function()? onSearchFromInputLocation,
    TResult? Function()? onLoadWeatherFromCurrentLocate,
  }) {
    return onChangeInputLocation?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function()? onLoadWeather,
    TResult Function(String input)? onChangeInputLocation,
    TResult Function()? onSearchFromInputLocation,
    TResult Function()? onLoadWeatherFromCurrentLocate,
    required TResult orElse(),
  }) {
    if (onChangeInputLocation != null) {
      return onChangeInputLocation(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeEventOnStarted value) onStarted,
    required TResult Function(HomeEventOnLoadWeather value) onLoadWeather,
    required TResult Function(HomeEventOnChangeInputLocation value)
        onChangeInputLocation,
    required TResult Function(HomeEventOnSearchFromInputLocation value)
        onSearchFromInputLocation,
    required TResult Function(HomeEventOnLoadWeatherFromCurrentLocate value)
        onLoadWeatherFromCurrentLocate,
  }) {
    return onChangeInputLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeEventOnStarted value)? onStarted,
    TResult? Function(HomeEventOnLoadWeather value)? onLoadWeather,
    TResult? Function(HomeEventOnChangeInputLocation value)?
        onChangeInputLocation,
    TResult? Function(HomeEventOnSearchFromInputLocation value)?
        onSearchFromInputLocation,
    TResult? Function(HomeEventOnLoadWeatherFromCurrentLocate value)?
        onLoadWeatherFromCurrentLocate,
  }) {
    return onChangeInputLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventOnStarted value)? onStarted,
    TResult Function(HomeEventOnLoadWeather value)? onLoadWeather,
    TResult Function(HomeEventOnChangeInputLocation value)?
        onChangeInputLocation,
    TResult Function(HomeEventOnSearchFromInputLocation value)?
        onSearchFromInputLocation,
    TResult Function(HomeEventOnLoadWeatherFromCurrentLocate value)?
        onLoadWeatherFromCurrentLocate,
    required TResult orElse(),
  }) {
    if (onChangeInputLocation != null) {
      return onChangeInputLocation(this);
    }
    return orElse();
  }
}

abstract class HomeEventOnChangeInputLocation implements HomeEvent {
  const factory HomeEventOnChangeInputLocation({required final String input}) =
      _$HomeEventOnChangeInputLocationImpl;

  String get input;
  @JsonKey(ignore: true)
  _$$HomeEventOnChangeInputLocationImplCopyWith<
          _$HomeEventOnChangeInputLocationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeEventOnSearchFromInputLocationImplCopyWith<$Res> {
  factory _$$HomeEventOnSearchFromInputLocationImplCopyWith(
          _$HomeEventOnSearchFromInputLocationImpl value,
          $Res Function(_$HomeEventOnSearchFromInputLocationImpl) then) =
      __$$HomeEventOnSearchFromInputLocationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeEventOnSearchFromInputLocationImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res,
        _$HomeEventOnSearchFromInputLocationImpl>
    implements _$$HomeEventOnSearchFromInputLocationImplCopyWith<$Res> {
  __$$HomeEventOnSearchFromInputLocationImplCopyWithImpl(
      _$HomeEventOnSearchFromInputLocationImpl _value,
      $Res Function(_$HomeEventOnSearchFromInputLocationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeEventOnSearchFromInputLocationImpl
    implements HomeEventOnSearchFromInputLocation {
  const _$HomeEventOnSearchFromInputLocationImpl();

  @override
  String toString() {
    return 'HomeEvent.onSearchFromInputLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeEventOnSearchFromInputLocationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function() onLoadWeather,
    required TResult Function(String input) onChangeInputLocation,
    required TResult Function() onSearchFromInputLocation,
    required TResult Function() onLoadWeatherFromCurrentLocate,
  }) {
    return onSearchFromInputLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function()? onLoadWeather,
    TResult? Function(String input)? onChangeInputLocation,
    TResult? Function()? onSearchFromInputLocation,
    TResult? Function()? onLoadWeatherFromCurrentLocate,
  }) {
    return onSearchFromInputLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function()? onLoadWeather,
    TResult Function(String input)? onChangeInputLocation,
    TResult Function()? onSearchFromInputLocation,
    TResult Function()? onLoadWeatherFromCurrentLocate,
    required TResult orElse(),
  }) {
    if (onSearchFromInputLocation != null) {
      return onSearchFromInputLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeEventOnStarted value) onStarted,
    required TResult Function(HomeEventOnLoadWeather value) onLoadWeather,
    required TResult Function(HomeEventOnChangeInputLocation value)
        onChangeInputLocation,
    required TResult Function(HomeEventOnSearchFromInputLocation value)
        onSearchFromInputLocation,
    required TResult Function(HomeEventOnLoadWeatherFromCurrentLocate value)
        onLoadWeatherFromCurrentLocate,
  }) {
    return onSearchFromInputLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeEventOnStarted value)? onStarted,
    TResult? Function(HomeEventOnLoadWeather value)? onLoadWeather,
    TResult? Function(HomeEventOnChangeInputLocation value)?
        onChangeInputLocation,
    TResult? Function(HomeEventOnSearchFromInputLocation value)?
        onSearchFromInputLocation,
    TResult? Function(HomeEventOnLoadWeatherFromCurrentLocate value)?
        onLoadWeatherFromCurrentLocate,
  }) {
    return onSearchFromInputLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventOnStarted value)? onStarted,
    TResult Function(HomeEventOnLoadWeather value)? onLoadWeather,
    TResult Function(HomeEventOnChangeInputLocation value)?
        onChangeInputLocation,
    TResult Function(HomeEventOnSearchFromInputLocation value)?
        onSearchFromInputLocation,
    TResult Function(HomeEventOnLoadWeatherFromCurrentLocate value)?
        onLoadWeatherFromCurrentLocate,
    required TResult orElse(),
  }) {
    if (onSearchFromInputLocation != null) {
      return onSearchFromInputLocation(this);
    }
    return orElse();
  }
}

abstract class HomeEventOnSearchFromInputLocation implements HomeEvent {
  const factory HomeEventOnSearchFromInputLocation() =
      _$HomeEventOnSearchFromInputLocationImpl;
}

/// @nodoc
abstract class _$$HomeEventOnLoadWeatherFromCurrentLocateImplCopyWith<$Res> {
  factory _$$HomeEventOnLoadWeatherFromCurrentLocateImplCopyWith(
          _$HomeEventOnLoadWeatherFromCurrentLocateImpl value,
          $Res Function(_$HomeEventOnLoadWeatherFromCurrentLocateImpl) then) =
      __$$HomeEventOnLoadWeatherFromCurrentLocateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeEventOnLoadWeatherFromCurrentLocateImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res,
        _$HomeEventOnLoadWeatherFromCurrentLocateImpl>
    implements _$$HomeEventOnLoadWeatherFromCurrentLocateImplCopyWith<$Res> {
  __$$HomeEventOnLoadWeatherFromCurrentLocateImplCopyWithImpl(
      _$HomeEventOnLoadWeatherFromCurrentLocateImpl _value,
      $Res Function(_$HomeEventOnLoadWeatherFromCurrentLocateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeEventOnLoadWeatherFromCurrentLocateImpl
    implements HomeEventOnLoadWeatherFromCurrentLocate {
  const _$HomeEventOnLoadWeatherFromCurrentLocateImpl();

  @override
  String toString() {
    return 'HomeEvent.onLoadWeatherFromCurrentLocate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeEventOnLoadWeatherFromCurrentLocateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function() onLoadWeather,
    required TResult Function(String input) onChangeInputLocation,
    required TResult Function() onSearchFromInputLocation,
    required TResult Function() onLoadWeatherFromCurrentLocate,
  }) {
    return onLoadWeatherFromCurrentLocate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function()? onLoadWeather,
    TResult? Function(String input)? onChangeInputLocation,
    TResult? Function()? onSearchFromInputLocation,
    TResult? Function()? onLoadWeatherFromCurrentLocate,
  }) {
    return onLoadWeatherFromCurrentLocate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function()? onLoadWeather,
    TResult Function(String input)? onChangeInputLocation,
    TResult Function()? onSearchFromInputLocation,
    TResult Function()? onLoadWeatherFromCurrentLocate,
    required TResult orElse(),
  }) {
    if (onLoadWeatherFromCurrentLocate != null) {
      return onLoadWeatherFromCurrentLocate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeEventOnStarted value) onStarted,
    required TResult Function(HomeEventOnLoadWeather value) onLoadWeather,
    required TResult Function(HomeEventOnChangeInputLocation value)
        onChangeInputLocation,
    required TResult Function(HomeEventOnSearchFromInputLocation value)
        onSearchFromInputLocation,
    required TResult Function(HomeEventOnLoadWeatherFromCurrentLocate value)
        onLoadWeatherFromCurrentLocate,
  }) {
    return onLoadWeatherFromCurrentLocate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeEventOnStarted value)? onStarted,
    TResult? Function(HomeEventOnLoadWeather value)? onLoadWeather,
    TResult? Function(HomeEventOnChangeInputLocation value)?
        onChangeInputLocation,
    TResult? Function(HomeEventOnSearchFromInputLocation value)?
        onSearchFromInputLocation,
    TResult? Function(HomeEventOnLoadWeatherFromCurrentLocate value)?
        onLoadWeatherFromCurrentLocate,
  }) {
    return onLoadWeatherFromCurrentLocate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventOnStarted value)? onStarted,
    TResult Function(HomeEventOnLoadWeather value)? onLoadWeather,
    TResult Function(HomeEventOnChangeInputLocation value)?
        onChangeInputLocation,
    TResult Function(HomeEventOnSearchFromInputLocation value)?
        onSearchFromInputLocation,
    TResult Function(HomeEventOnLoadWeatherFromCurrentLocate value)?
        onLoadWeatherFromCurrentLocate,
    required TResult orElse(),
  }) {
    if (onLoadWeatherFromCurrentLocate != null) {
      return onLoadWeatherFromCurrentLocate(this);
    }
    return orElse();
  }
}

abstract class HomeEventOnLoadWeatherFromCurrentLocate implements HomeEvent {
  const factory HomeEventOnLoadWeatherFromCurrentLocate() =
      _$HomeEventOnLoadWeatherFromCurrentLocateImpl;
}
