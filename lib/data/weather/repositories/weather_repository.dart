import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/data/weather/datasources/i_weather_datasource.dart';
import 'package:weather_app/data/weather/dtos/weather_request.dart';
import 'package:weather_app/domain/core/error/failure.dart';
import 'package:weather_app/domain/weather/entity/weather.dart';
import 'package:weather_app/domain/weather/repository/i_weather_repository.dart';

@LazySingleton(as: IWeatherRepository)
class WeatherRepository implements IWeatherRepository {
  final IWeatherDatasource weatherDatasource;
  WeatherRepository({required this.weatherDatasource});
  @override
  Future<Either<Failure, Weather>> getWeatherByLatLong({
    required double lat,
    required double long,
  }) async {
    try {
      final res = await weatherDatasource.getWeatherByLatLong(
        WeatherRequest(lat: lat, lon: long),
      );
      return right(res.toEntity());
    } on DioException catch (ex, trace) {
      return left(
        ServerFailure(errorMessage: ex.toString(), stackTrace: trace),
      );
    } catch (ex, trace) {
      return left(
        UnhandleFailure(errorMessage: ex.toString(), stackTrace: trace),
      );
    }
  }
}
