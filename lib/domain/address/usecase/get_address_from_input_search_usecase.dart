import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/domain/address/entity/address.dart';
import 'package:weather_app/domain/address/repository/i_address_repository.dart';
import 'package:weather_app/domain/core/error/failure.dart';
import 'package:weather_app/domain/core/usecases/usecase.dart';

@lazySingleton
class GetAddressFromInputSearchUsecase implements UseCase<Address, String> {
  final IAddressRepository addressRepository;
  GetAddressFromInputSearchUsecase({required this.addressRepository});
  @override
  Future<Either<Failure, Address>> call(String params) {
    return addressRepository.getAddressFromInputSearch(params);
  }
}
