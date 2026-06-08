import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/cart/data/models/cart_item_model/cart_item_model.dart';
import 'package:flutter_tdd/features/user/cart/data/models/delivery_model/delivery_model.dart';
import 'package:flutter_tdd/features/user/cart/data/models/pick_up_model/pick_up_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/delivery.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/seller_shipping.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'seller_shipping_model.freezed.dart';
part 'seller_shipping_model.g.dart';

@freezed
@immutable
class SellerShippingModel extends BaseApiModel<SellerShipping>
    with _$SellerShippingModel {
  const SellerShippingModel._();

  @JsonSerializable(explicitToJson: true)
  const factory SellerShippingModel(
      {required String name,
      required List<CartItemModel> items,
      required bool physical,
      @JsonKey(name: "active_pickup") required bool activePickUp,
      required PickUpModel? pickup,
      @JsonKey(name: 'active_delivery') required bool activeDelivery,
      @JsonKey(name: 'delivery_message') required String deliveryMessage,
      required DeliveryModel? delivery,
      @JsonKey(name: "owner_id") required int ownerId}) = _SellerShippingModel;

  factory SellerShippingModel.fromJson(Map<String, dynamic> json) =>
      _$SellerShippingModelFromJson(json);

  @override
  SellerShipping toDomainModel() {
    return SellerShipping(
        name: name,
        items: items.map((e) => e.toDomainModel()).toList(),
        physical: physical,
        activePickup: activePickUp,
        pickup: pickup?.toDomainModel(),
        activeDelivery: activeDelivery,
        delivery: getDelivery(),
        ownerId: ownerId,
        deliveryMessage: deliveryMessage);
  }

  Delivery? getDelivery() {
    if (delivery != null) {
      return delivery!.toDomainModel();
    } else {
      return null;
    }
  }
}
