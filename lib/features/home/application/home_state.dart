part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(Status.idle()) Status status,
    Weather? weather,
    double? lat,
    double? lng,
    String? input,
  }) = _HomeState;
}
