part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.onStarted() = HomeEventOnStarted;
  const factory HomeEvent.onLoadWeather() = HomeEventOnLoadWeather;

  // User Act
  const factory HomeEvent.onChangeInputLocation({required String input}) =
      HomeEventOnChangeInputLocation;
  const factory HomeEvent.onSearchFromInputLocation() =
      HomeEventOnSearchFromInputLocation;
  const factory HomeEvent.onLoadWeatherFromCurrentLocate() =
      HomeEventOnLoadWeatherFromCurrentLocate;
}
