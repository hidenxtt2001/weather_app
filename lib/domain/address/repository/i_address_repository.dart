import 'package:dartz/dartz.dart';
import 'package:weather_app/domain/address/entity/address.dart';
import 'package:weather_app/domain/core/error/failure.dart';

abstract class IAddressRepository {
  Future<Either<Failure, Address>> getAddressFromInputSearch(String input);
}
