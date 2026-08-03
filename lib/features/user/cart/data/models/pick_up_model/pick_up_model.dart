import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/pick_up.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pick_up_model.freezed.dart';
part 'pick_up_model.g.dart';

@freezed
@immutable
class PickUpModel extends BaseApiModel<Pickup> with _$PickUpModel {
  const PickUpModel._();
  @JsonSerializable(explicitToJson: true)
  const factory PickUpModel(
      {required int id,
      required String address,
      @JsonKey(name: 'postal_code') required String postalCode,
      double? lat,
        double? lang}) = _PickUpModel;

  factory PickUpModel.fromJson(Map<String, dynamic> json) =>
      _$PickUpModelFromJson(json);

  @override
  Pickup toDomainModel() {
    return Pickup(
        id: id,
        address: address,
        phone: postalCode,
        lat: lat,
        lang: lang,
        postalCode: postalCode);
  }
}
