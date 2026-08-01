// ignore_for_file: public_member_api_docs

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';


import '../../../domain/models/pharmacy_shipping_domain_model.dart';


part 'pharmacy_shipping_model.freezed.dart';
part 'pharmacy_shipping_model.g.dart';

@freezed
class PharmacyShippingModel extends BaseApiModel<PharmacyShippingDomainModel>
    with _$PharmacyShippingModel {
  const PharmacyShippingModel._();
  @JsonSerializable(explicitToJson: true)
  const factory PharmacyShippingModel({
    @JsonKey(name: 'owner_id')  required int ownerId,
    @JsonKey(name: 'name')  required String name,
    @JsonKey(name: 'physical')  required bool physical,
    @JsonKey(name: 'active_delivery') required bool activeDelivery,
    @JsonKey(name: 'active_pickup') required bool activePickup,
    @JsonKey(name: 'delivery_message') String? deliveryMessage,
    @JsonKey(name: 'delivery') required DeliveryObjectModel? deliveryObject,
    @JsonKey(name: 'pickup') required PharmacyPickUpModel? pickupModel,
  }) = _PharmacyShippingModel;

  factory PharmacyShippingModel.fromJson(Map<String, dynamic> json) =>
      _$PharmacyShippingModelFromJson(json);

  @override
  PharmacyShippingDomainModel toDomainModel() {
    return PharmacyShippingDomainModel(
      activeDelivery: activeDelivery,
      deliveryMessage: deliveryMessage,
      delivery: deliveryObject?.toDomainModel(),
      ownerId: ownerId,
      name: name,
      activePickup: activePickup,
      physical: physical,
      pickup: pickupModel?.toDomainModel()
    );
  }
}

@freezed
class DeliveryObjectModel extends BaseApiModel<PharmacyShippingDetailsDomainModel>
    with _$DeliveryObjectModel {
  const DeliveryObjectModel._();

  const factory DeliveryObjectModel({
    @JsonKey(name: 'transit_in') required String transitIn,
  }) = _DeliveryObjectModel;

  factory DeliveryObjectModel.fromJson(Map<String, dynamic> json) =>
      _$DeliveryObjectModelFromJson(json);

  @override
  PharmacyShippingDetailsDomainModel toDomainModel() {
    return PharmacyShippingDetailsDomainModel(
      transitIn: transitIn,
    );
  }
}


@freezed
@immutable
class PharmacyPickUpModel extends BaseApiModel<PharmacyShippingPickupDomainModel> with _$PharmacyPickUpModel {
  const PharmacyPickUpModel._();
  @JsonSerializable(explicitToJson: true)
  const factory PharmacyPickUpModel(
      {required int id,
        required String address,
        @JsonKey(name: 'postal_code') required String postalCode,
        double? lat,
        double? lang,
      }) = _PharmacyPickUpModel;

  factory PharmacyPickUpModel.fromJson(Map<String, dynamic> json) =>
      _$PharmacyPickUpModelFromJson(json);

  @override
  PharmacyShippingPickupDomainModel toDomainModel() {
    return PharmacyShippingPickupDomainModel(
        id: id,
        address: address,
        phone: postalCode,
        lat: lat,
        lang: lang,
        postalCode: postalCode);
  }
}
