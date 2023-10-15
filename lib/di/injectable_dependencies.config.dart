// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/address/datasources/address_remote_datasource.dart' as _i5;
import '../data/address/datasources/i_address_datasource.dart' as _i4;
import '../data/address/repositories/address_repository.dart' as _i7;
import '../data/core/network_module.dart' as _i18;
import '../data/geolocator/repositories/geolocator_repository.dart' as _i9;
import '../data/weather/datasources/i_weather_datasource.dart' as _i10;
import '../data/weather/datasources/weather_remote_datasource.dart' as _i11;
import '../data/weather/repositories/weather_repository.dart' as _i13;
import '../domain/address/repository/i_address_repository.dart' as _i6;
import '../domain/address/usecase/get_address_from_input_search_usecase.dart'
    as _i14;
import '../domain/geolocator/repositories/i_geolocator_repository.dart' as _i8;
import '../domain/geolocator/usecases/get_current_position_geolocator_usecase.dart'
    as _i15;
import '../domain/weather/repository/i_weather_repository.dart' as _i12;
import '../domain/weather/usecases/get_weather_by_lat_long_usecase.dart'
    as _i16;
import '../features/home/application/home_bloc.dart' as _i17;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final networkModule = _$NetworkModule();
  gh.factory<_i3.Dio>(
    () => networkModule.weatherDio,
    instanceName: 'weatherDio',
  );
  gh.factory<_i3.Dio>(
    () => networkModule.goongMapDio,
    instanceName: 'goongMapDio',
  );
  gh.lazySingleton<_i4.IAddressDatasource>(() => _i5.AddressRemoteDatasource(
      addressDio: gh<_i3.Dio>(instanceName: 'goongMapDio')));
  gh.lazySingleton<_i6.IAddressRepository>(() =>
      _i7.AddressRepository(addressDatasource: gh<_i4.IAddressDatasource>()));
  gh.lazySingleton<_i8.IGeolocatorRepsitory>(() => _i9.GeolocatorRepository());
  gh.lazySingleton<_i10.IWeatherDatasource>(() => _i11.WeatherRemoteDatasource(
      weatherDio: gh<_i3.Dio>(instanceName: 'weatherDio')));
  gh.lazySingleton<_i12.IWeatherRepository>(() =>
      _i13.WeatherRepository(weatherDatasource: gh<_i10.IWeatherDatasource>()));
  gh.factory<String>(
    () => networkModule.weatherUrl,
    instanceName: 'weatherUrl',
  );
  gh.factory<String>(
    () => networkModule.goongMapUrl,
    instanceName: 'goongMapUrl',
  );
  gh.lazySingleton<_i14.GetAddressFromInputSearchUsecase>(() =>
      _i14.GetAddressFromInputSearchUsecase(
          addressRepository: gh<_i6.IAddressRepository>()));
  gh.lazySingleton<_i15.GetCurrentPositionGeolocatorUsecase>(() =>
      _i15.GetCurrentPositionGeolocatorUsecase(
          iGeolocatorRepsitory: gh<_i8.IGeolocatorRepsitory>()));
  gh.lazySingleton<_i16.GetWeatherByLatLongUsecase>(() =>
      _i16.GetWeatherByLatLongUsecase(
          weatherRepository: gh<_i12.IWeatherRepository>()));
  gh.factory<_i17.HomeBloc>(() => _i17.HomeBloc(
        gh<_i16.GetWeatherByLatLongUsecase>(),
        gh<_i14.GetAddressFromInputSearchUsecase>(),
        gh<_i15.GetCurrentPositionGeolocatorUsecase>(),
      ));
  return getIt;
}

class _$NetworkModule extends _i18.NetworkModule {}
