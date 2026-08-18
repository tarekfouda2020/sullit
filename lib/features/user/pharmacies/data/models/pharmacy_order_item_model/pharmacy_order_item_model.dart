import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/core/models/api_models/product_model/product_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/pharmacy_order_item_domain_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/reviews_model/reviews_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pharmacy_order_item_model.freezed.dart';
part 'pharmacy_order_item_model.g.dart';

@freezed
@immutable
class PharmacyOrderItemModel extends BaseApiModel<PharmacyOrderItemDomainModel>
    with _$PharmacyOrderItemModel {
  const PharmacyOrderItemModel._();

  @JsonSerializable(explicitToJson: true)
  const factory PharmacyOrderItemModel({
    int? id,
    String? variation,
    int? quantity,
    @JsonKey(name: 'sold_by_type') String? soldByType,
    @JsonKey(name: 'sold_by_name') String? soldByName,
    @JsonKey(name: 'available_return_qty') int? availableReturnQty,
    @JsonKey(name: 'delivery_type') String? deliveryType,
    String? price,
    String? tax,
    @JsonKey(name: 'vip_offer_discount') String? vipOfferDiscount,
    @JsonKey(name: 'shareholder_discount') String? shareholderDiscount,
    ProductModel? product,
    @JsonKey(name: 'review_is_available') bool? reviewIsAvailable,
    @JsonKey(name: 'msg_cant_review') String? msgCantReview,
    ReviewsModel? review,
    @JsonKey(name: 'shipped_by') String? shippedBy,
    @JsonKey(name: 'picker_notes') String? pickerNotes,
  }) = _PharmacyOrderItemModel;

  factory PharmacyOrderItemModel.fromJson(Map<String, dynamic> json) =>
      _$PharmacyOrderItemModelFromJson(json);

  @override
  PharmacyOrderItemDomainModel toDomainModel() {
    return PharmacyOrderItemDomainModel(
      id: id,
      variation: variation,
      quantity: quantity,
      soldByType: soldByType,
      soldByName: soldByName,
      availableReturnQty: availableReturnQty,
      deliveryType: deliveryType,
      price: price,
      tax: tax,
      vipOfferDiscount: vipOfferDiscount,
      shareholderDiscount: shareholderDiscount,
      product: product?.toDomainModel(),
      reviewIsAvailable: reviewIsAvailable,
      msgCantReview: msgCantReview,
      review: review?.toDomainModel(),
      shippedBy: shippedBy,
      pickerNotes: pickerNotes,
    );
  }
}
