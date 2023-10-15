import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/domain/address/usecase/get_address_from_input_search_usecase.dart';
import 'package:weather_app/domain/core/usecases/usecase.dart';
import 'package:weather_app/domain/geolocator/usecases/get_current_position_geolocator_usecase.dart';
import 'package:weather_app/domain/weather/entity/weather.dart';
import 'package:weather_app/domain/weather/usecases/get_weather_by_lat_long_usecase.dart';
import 'package:weather_app/domain/weather/usecases/input/get_weather_input.dart';
import 'package:weather_app/features/app/common/status.dart';

part 'home_state.dart';
part 'home_event.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetWeatherByLatLongUsecase _getWeatherByLatLongUsecase;
  final GetAddressFromInputSearchUsecase _getAddressFromInputSearchUsecase;
  final GetCurrentPositionGeolocatorUsecase _currentPositionGeolocatorUsecase;
  HomeBloc(
      this._getWeatherByLatLongUsecase,
      this._getAddressFromInputSearchUsecase,
      this._currentPositionGeolocatorUsecase)
      : super(const HomeState()) {
    on<HomeEventOnStarted>(_onStarted);
    on<HomeEventOnLoadWeather>(_onLoadWeather);
    on<HomeEventOnLoadWeatherFromCurrentLocate>(
        _onLoadWeatherFromCurrentLocate);
    on<HomeEventOnChangeInputLocation>(_onChangeInputLocation);
    on<HomeEventOnSearchFromInputLocation>(_onSearchFromInputLocation);
  }

  FutureOr<void> _onStarted(
    HomeEventOnStarted event,
    Emitter<HomeState> emit,
  ) {
    add(const HomeEvent.onLoadWeatherFromCurrentLocate());
  }

  FutureOr<void> _onLoadWeather(
    HomeEventOnLoadWeather event,
    Emitter<HomeState> emit,
  ) async {
    if (state.lat == null || state.lng == null) {
      return;
    }
    try {
      emit(state.copyWith(status: const Status.loading()));
      final result = await _getWeatherByLatLongUsecase
          .call(GetWeatherInput(lat: state.lat!, long: state.lng!));
      emit(state.copyWith(firstRun: false));
      result.fold(
        (l) => throw l,
        (r) => emit(
          state.copyWith(
            weather: r,
          ),
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: Status.failure(error: e)));
    } finally {
      emit(state.copyWith(status: const Status.idle()));
    }
  }

  FutureOr<void> _onLoadWeatherFromCurrentLocate(
    HomeEventOnLoadWeatherFromCurrentLocate event,
    Emitter<HomeState> emit,
  ) async {
    try {
      final result =
          await _currentPositionGeolocatorUsecase.call(const NoParams());
      result.fold(
        (l) => throw l,
        (r) {
          emit(
            state.copyWith(
              lat: r.lat,
              lng: r.lng,
            ),
          );
          add(const HomeEvent.onLoadWeather());
        },
      );
    } catch (e) {
      emit(state.copyWith(status: Status.failure(error: e)));
    } finally {
      emit(state.copyWith(status: const Status.idle()));
    }
  }

  FutureOr<void> _onChangeInputLocation(
    HomeEventOnChangeInputLocation event,
    Emitter<HomeState> emit,
  ) {
    emit(state.copyWith(input: event.input));
  }

  FutureOr<void> _onSearchFromInputLocation(
    HomeEventOnSearchFromInputLocation event,
    Emitter<HomeState> emit,
  ) async {
    if (state.input?.isNotEmpty != true) {
      return;
    }
    try {
      emit(state.copyWith(status: const Status.loading()));
      final result = await _getAddressFromInputSearchUsecase.call(state.input!);
      result.fold(
        (l) => throw l,
        (r) {
          emit(
            state.copyWith(
              lat: r.geometry?.location?.lat,
              lng: r.geometry?.location?.lng,
            ),
          );
          add(const HomeEvent.onLoadWeather());
        },
      );
    } catch (e) {
      emit(state.copyWith(status: Status.failure(error: e)));
    } finally {
      emit(state.copyWith(status: const Status.idle()));
    }
  }
}
