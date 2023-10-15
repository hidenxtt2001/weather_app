import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/domain/core/error/failure.dart';
import 'package:weather_app/domain/core/usecases/usecase.dart';
import 'package:weather_app/domain/geolocator/entity/geolocate.dart';
import 'package:weather_app/domain/geolocator/repositories/i_geolocator_repository.dart';

@lazySingleton
class GetCurrentPositionGeolocatorUsecase
    implements UseCase<GeoLocate, NoParams> {
  final IGeolocatorRepsitory iGeolocatorRepsitory;
  GetCurrentPositionGeolocatorUsecase({required this.iGeolocatorRepsitory});
  @override
  Future<Either<Failure, GeoLocate>> call(NoParams params) {
    return iGeolocatorRepsitory.getCurrentPosition();
  }
}
