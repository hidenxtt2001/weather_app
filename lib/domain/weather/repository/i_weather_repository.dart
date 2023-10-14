import 'package:dartz/dartz.dart';
import 'package:weather_app/domain/core/error/failure.dart';
import 'package:weather_app/domain/weather/entity/weather.dart';

abstract class IWeatherRepository {
  Future<Either<Failure, Weather>> getWeatherByLatLong({
    required double lat,
    required double long,
  });
}
