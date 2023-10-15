import 'package:dartz/dartz.dart';
import 'package:weather_app/domain/core/error/failure.dart';
import 'package:weather_app/domain/geolocator/entity/geolocate.dart';

abstract class IGeolocatorRepsitory {
  Future<Either<Failure, GeoLocate>> getCurrentPosition();
}
