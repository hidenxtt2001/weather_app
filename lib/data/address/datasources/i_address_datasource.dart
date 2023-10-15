import 'package:weather_app/data/address/dtos/address_query_param_request.dart';
import 'package:weather_app/data/address/dtos/address_response.dart';

abstract class IAddressDatasource {
  Future<AddressResponse> getAddressFromInputSearch(
    AddressQueryParamRequest request,
  );
}
