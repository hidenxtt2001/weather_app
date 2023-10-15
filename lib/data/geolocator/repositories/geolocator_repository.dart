import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/data/geolocator/dtos/position_dto.dart';
import 'package:weather_app/domain/core/error/failure.dart';
import 'package:weather_app/domain/geolocator/entity/geolocate.dart';
import 'package:weather_app/domain/geolocator/repositories/i_geolocator_repository.dart';

@LazySingleton(as: IGeolocatorRepsitory)
class GeolocatorRepository implements IGeolocatorRepsitory {
  @override
  Future<Either<Failure, GeoLocate>> getCurrentPosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    try {
      // Test if location services are enabled.
      serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        // Location services are not enabled don't continue
        // accessing the position and request users of the
        // App to enable the location services.
        return left(
          PermissionFailure(
            errorMessage: 'Location services are disabled.',
            stackTrace: StackTrace.current,
          ),
        );
      }

      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          // Permissions are denied, next time you could try
          // requesting permissions again (this is also where
          // Android's shouldShowRequestPermissionRationale
          // returned true. According to Android guidelines
          // your App should show an explanatory UI now.
          return left(
            PermissionFailure(
              errorMessage: 'Location permissions are denied',
              stackTrace: StackTrace.current,
            ),
          );
        }
      }

      if (permission == LocationPermission.deniedForever) {
        // Permissions are denied forever, handle appropriately.
        return Future.error(
            'Location permissions are permanently denied, we cannot request permissions.');
      }

      // When we reach here, permissions are granted and we can
      // continue accessing the position of the device.
      final pos = await Geolocator.getCurrentPosition();

      return right(pos.toEnity());
    } catch (e, trace) {
      return left(
          UnhandleFailure(stackTrace: trace, errorMessage: e.toString()));
    }
  }
}
