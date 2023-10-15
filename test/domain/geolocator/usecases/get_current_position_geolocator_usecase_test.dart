import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_app/domain/core/error/failure.dart';
import 'package:weather_app/domain/core/usecases/usecase.dart';
import 'package:weather_app/domain/geolocator/entity/geolocate.dart';
import 'package:weather_app/domain/geolocator/repositories/i_geolocator_repository.dart';
import 'package:weather_app/domain/geolocator/usecases/get_current_position_geolocator_usecase.dart';

class MockGeolocatorRepository extends Mock implements IGeolocatorRepsitory {}

void main() {
  late MockGeolocatorRepository mockGeolocatorRepository;
  late GetCurrentPositionGeolocatorUsecase getCurrentPositionGeolocatorUsecase;
  setUp(() {
    mockGeolocatorRepository = MockGeolocatorRepository();
    getCurrentPositionGeolocatorUsecase = GetCurrentPositionGeolocatorUsecase(
        iGeolocatorRepsitory: mockGeolocatorRepository);
  });

  group("Get current position geolocator", () {
    test("should get current geolocator", () async {
      // Arrange
      const tGeolocator = GeoLocate(lat: 1.0, lng: 1.0);
      when(() => mockGeolocatorRepository.getCurrentPosition())
          .thenAnswer((_) async => right(tGeolocator));
      // Acts
      final res =
          await getCurrentPositionGeolocatorUsecase.call(const NoParams());
      // Assert
      expect(res, const Right(tGeolocator));
    });
    test("should return failure", () async {
      const tFailure =
          PermissionFailure(errorMessage: 'test', stackTrace: StackTrace.empty);
      when(() => mockGeolocatorRepository.getCurrentPosition())
          .thenAnswer((_) async => left(tFailure));
      // Acts
      final res =
          await getCurrentPositionGeolocatorUsecase.call(const NoParams());
      // Assert
      expect(res, const Left(tFailure));
    });
  });
}
