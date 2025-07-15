import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/addresses/domain/models/address_type_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_type.freezed.dart';
part 'address_type.g.dart';

@freezed
class AddressType extends BaseApiModel<AddressTypeModel> with _$AddressType{
  const AddressType._();
  @JsonSerializable(explicitToJson: true)
  factory AddressType({
    required String key,
    required String label,
  }) = _AddressType;


  factory AddressType.fromJson(Map<String, dynamic> json) =>
      _$AddressTypeFromJson(json);

  @override
  AddressTypeModel toDomainModel() {
    return AddressTypeModel(key: key, label: label);
  }
}