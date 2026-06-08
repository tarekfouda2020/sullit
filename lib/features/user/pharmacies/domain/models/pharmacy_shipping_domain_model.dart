import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class PharmacyShippingDomainModel extends BaseDomainModel {
  String? name;
  bool? physical;
  bool? activePickup;
  // PharmacyShippingDetailsModel? pickup;
  bool? activeDelivery;
  PharmacyShippingDetailsDomainModel? delivery;
  String? deliveryMessage;
  int? ownerId;

  PharmacyShippingDomainModel({
    this.name,
    this.physical,
    this.activePickup,
    // this.pickup,
    this.activeDelivery,
    this.delivery,
    this.deliveryMessage,
    this.ownerId,
  });

}

class PharmacyShippingDetailsDomainModel extends BaseDomainModel {
  String? transitIn;
  String? shippingCost;

  PharmacyShippingDetailsDomainModel({
    this.transitIn,
    this.shippingCost,
  });

}