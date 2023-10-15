import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/data/address/datasources/i_address_datasource.dart';
import 'package:weather_app/data/address/dtos/address_query_param_request.dart';
import 'package:weather_app/domain/address/entity/address.dart';
import 'package:weather_app/domain/address/repository/i_address_repository.dart';
import 'package:weather_app/domain/core/error/failure.dart';

@LazySingleton(as: IAddressRepository)
class AddressRepository extends IAddressRepository {
  final IAddressDatasource _addressDatasource;

  AddressRepository({required IAddressDatasource addressDatasource})
      : _addressDatasource = addressDatasource;
  @override
  Future<Either<Failure, Address>> getAddressFromInputSearch(
      String input) async {
    try {
      final res = await _addressDatasource.getAddressFromInputSearch(
        AddressQueryParamRequest(address: input),
      );
      return right(res.toEntity());
    } on DioException catch (e, trace) {
      return left(ServerFailure(errorMessage: e.toString(), stackTrace: trace));
    } catch (e, trace) {
      return left(
        UnhandleFailure(
          stackTrace: trace,
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
