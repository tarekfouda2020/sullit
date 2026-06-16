import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/cart/data/enum/delivery_type_enum.dart';

class PharmacyShippingDomainModel extends BaseDomainModel {
  String? name;
  bool? physical;
  bool? activePickup;
  PharmacyShippingPickupDomainModel? pickup;
  bool? activeDelivery;
  PharmacyShippingDetailsDomainModel? delivery;
  String? deliveryMessage;
  int? ownerId;
  DeliveryTypeEnum deliveryType;

  PharmacyShippingDomainModel({
    this.name,
    this.physical,
    this.activePickup,
    this.pickup,
    this.activeDelivery,
    this.delivery,
    this.deliveryMessage,
    this.ownerId,
    this.deliveryType = DeliveryTypeEnum.delivery,
  });


  bool get isDelivery => deliveryType == DeliveryTypeEnum.delivery;
  bool get isPickup => deliveryType == DeliveryTypeEnum.pickUp;
  bool get noOption => activeDelivery == false && activePickup == false;

}

class PharmacyShippingDetailsDomainModel extends BaseDomainModel {
  String? transitIn;
  String? shippingCost;

  PharmacyShippingDetailsDomainModel({
    this.transitIn,
    this.shippingCost,
  });

}




class PharmacyShippingPickupDomainModel extends BaseDomainModel {
  int id;
  String address;
  String postalCode;
  String phone;
  double? lat;
  double? lang;
  bool isSelected;

  // PharmacyShippingPickup(
  PharmacyShippingPickupDomainModel(
      {required this.id,
        required this.address,
        required this.postalCode,
        required this.phone,
        required this.lat,
        this.isSelected = false,
        required this.lang});
}