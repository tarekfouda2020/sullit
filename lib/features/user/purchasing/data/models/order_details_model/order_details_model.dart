import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/reviews_model/reviews_model.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/order_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_details_model.freezed.dart';
part 'order_details_model.g.dart';

@freezed
@immutable
class OrderProductModel extends BaseApiModel<OrderProductDomainModel>
    with _$OrderProductModel {
  const OrderProductModel._();

  @JsonSerializable(explicitToJson: true)
  const factory OrderProductModel({
    required int id,
    required String name,
    required String type,
    @JsonKey(name: 'type_label') required String typeLabel,
    required String unit,
    required String barcode,
    required double rating,
    @JsonKey(name: 'thumbnail_img') required String thumbnailImage,
    @JsonKey(name: 'currency_symbol') required String currencySymbol,
  }) = _OrderProductModel;

  factory OrderProductModel.fromJson(Map<String, dynamic> json) =>
      _$OrderProductModelFromJson(json);

  @override
  OrderProductDomainModel toDomainModel() {
    return OrderProductDomainModel(
      id: id,
      name: name,
      type: type,
      typeLabel: typeLabel,
      unit: unit,
      barcode: barcode,
      rating: rating,
      thumbnailImage: thumbnailImage,
      currencySymbol: currencySymbol,
    );
  }
}

@freezed
@immutable
class OrderDetailsModel extends BaseApiModel<OrderDetails>
    with _$OrderDetailsModel {
  const OrderDetailsModel._();

  @JsonSerializable(explicitToJson: true)
  const factory OrderDetailsModel({
    required int id,
    OrderProductModel? product,
    required String variation,
    required int quantity,
    @JsonKey(name: 'available_return_qty') required int availableReturnQty,
    @JsonKey(name: 'delivery_type') required String deliveryType,
    required String price,
    String? tax,
    @JsonKey(name: 'review_is_available') required bool isAvailableReview,
    @JsonKey(name: 'msg_cant_review') required String msgCantReview,
    @JsonKey(name: 'shipped_by') String? shippedBy,
    @JsonKey(name: 'sold_by_type') required String soldByType,
    @JsonKey(name: 'sold_by_name') required String soldBy,
    ReviewsModel? review,
    @JsonKey(name: 'picker_notes') String? pickerNotes,
    String? instructions,
    @JsonKey(name: 'insurance_coverage_percentage')
    String? insuranceCoveragePercentage,
  }) = _OrderDetailsModel;

  factory OrderDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailsModelFromJson(json);

  @override
  OrderDetails toDomainModel() {
    return OrderDetails(
        id: id,
        variation: variation,
        quantity: quantity,
        deliveryType: deliveryType,
        price: price,
        availableReturnQty: availableReturnQty,
        isAvailableReview: isAvailableReview,
        msgCantReview: msgCantReview,
        product: product?.toDomainModel(),
        review: review?.toDomainModel(),
        shippedBy: shippedBy,
        tax: tax,
        soldBy: soldBy,
        soldByType: soldByType,
        pickerNotes: pickerNotes,
        instructions: instructions,
        insuranceCoveragePercentage: insuranceCoveragePercentage);
  }
}




