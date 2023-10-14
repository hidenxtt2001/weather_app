import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/domain/core/error/failure.dart';
import 'package:weather_app/domain/core/usecases/usecase.dart';
import 'package:weather_app/domain/weather/entity/weather.dart';
import 'package:weather_app/domain/weather/repository/i_weather_repository.dart';
import 'package:weather_app/domain/weather/usecases/input/get_weather_input.dart';

class GetWeatherByLatLongUsecase implements UseCase<Weather, GetWeatherInput> {
  final IWeatherRepository weatherRepository;
  const GetWeatherByLatLongUsecase({required this.weatherRepository});
  @override
  Future<Either<Failure, Weather>> call(GetWeatherInput params) async {
    final res = await weatherRepository.getWeatherByLatLong(
      lat: params.lat,
      long: params.long,
    );
    return res;
  }
}
