import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_app/domain/address/entity/address.dart';
import 'package:weather_app/domain/address/entity/geometry.dart';
import 'package:weather_app/domain/address/entity/location.dart';
import 'package:weather_app/domain/address/repository/i_address_repository.dart';
import 'package:weather_app/domain/address/usecase/get_address_from_input_search_usecase.dart';
import 'package:weather_app/domain/core/error/failure.dart';

class MockAddressRepository extends Mock implements IAddressRepository {}

void main() {
  late MockAddressRepository mockAddressRepository;
  late GetAddressFromInputSearchUsecase getAddressFromInputSearchUsecase;

  setUp(() {
    mockAddressRepository = MockAddressRepository();
    getAddressFromInputSearchUsecase = GetAddressFromInputSearchUsecase(
        addressRepository: mockAddressRepository);
  });
  group("Get geocode from address", () {
    test("should return geocode from address", () async {
      final tAddress = Address(
        address: 'P, Quận 12, Hồ Chí Minh 700000',
        geometry: Geometry(
          location: Location(
            lat: 10.8271161,
            lng: 106.6039648,
          ),
        ),
        name: '2975 QL1A',
      );
      // Arrange
      when(() => mockAddressRepository.getAddressFromInputSearch(any()))
          .thenAnswer((_) async => right(tAddress));
      // Act
      final result = await getAddressFromInputSearchUsecase.call("Test");
      // Assert
      verify(
        () => mockAddressRepository.getAddressFromInputSearch("Test"),
      );
      expect(result, Right(tAddress));
      verifyNoMoreInteractions(mockAddressRepository);
    });

    test("should return failure", () async {
      // Arrange
      const failure =
          ServerFailure(errorMessage: "Test", stackTrace: StackTrace.empty);
      when(() => mockAddressRepository.getAddressFromInputSearch(any()))
          .thenAnswer((_) async => left(failure));
      // Act
      final result = await getAddressFromInputSearchUsecase.call("Test");
      // Assert
      verify(
        () => mockAddressRepository.getAddressFromInputSearch("Test"),
      );
      expect(result, const Left(failure));
      verifyNoMoreInteractions(mockAddressRepository);
    });
  });
}
