import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/config/constant_config.dart';
import 'package:weather_app/data/address/datasources/i_address_datasource.dart';
import 'package:weather_app/data/address/dtos/address_query_param_request.dart';
import 'package:weather_app/data/address/dtos/address_response.dart';

@LazySingleton(as: IAddressDatasource)
class AddressRemoteDatasource implements IAddressDatasource {
  final Dio addressDio;

  AddressRemoteDatasource({@Named("goongMapDio") required this.addressDio});

  @override
  Future<AddressResponse> getAddressFromInputSearch(
      AddressQueryParamRequest request) async {
    final res = await addressDio.get('/geocode',
        queryParameters: request.toJson()
          // TODO : use interceptor instead
          ..addAll(
            {
              "api_key": ConstantConfig.goongMapApi,
            },
          ));
    // Temp
    final firstValue = (res.data["results"] as List<dynamic>)
        .map((e) => e as Map<String, dynamic>)
        .first;

    return AddressResponse.fromJson(
      firstValue,
    );
  }
}
