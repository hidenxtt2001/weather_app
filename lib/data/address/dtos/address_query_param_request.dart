import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'address_query_param_request.g.dart';

@JsonSerializable(createFactory: false)
class AddressQueryParamRequest extends Equatable {
  final String address;
  const AddressQueryParamRequest({required this.address});

  Map<String, dynamic> toJson() => _$AddressQueryParamRequestToJson(this);

  @override
  List<Object?> get props => [address];
}
