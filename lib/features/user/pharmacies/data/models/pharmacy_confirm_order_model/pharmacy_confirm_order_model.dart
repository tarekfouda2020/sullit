import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/pharmacy_confirm_order_domain_model.dart';
import 'package:flutter_tdd/features/user/purchasing/data/models/order_details_model/order_details_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/reviews_model/reviews_model.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/order_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pharmacy_confirm_order_model.freezed.dart';
part 'pharmacy_confirm_order_model.g.dart';

@freezed
@immutable
class PharmacyConfirmOrderModel extends BaseApiModel<PharmacyConfirmOrderDomainModel>
    with _$PharmacyConfirmOrderModel {
  const PharmacyConfirmOrderModel._();

  @JsonSerializable(explicitToJson: true)
  const factory PharmacyConfirmOrderModel({
    int? id,
    OrderProductModel? product,
    String? variation,
    int? quantity,
    @JsonKey(name: 'available_return_qty') int? availableReturnQty,
    @JsonKey(name: 'delivery_type') String? deliveryType,
    String? price,
    String? tax,
    @JsonKey(name: 'review_is_available') bool? isAvailableReview,
    @JsonKey(name: 'msg_cant_review') String? msgCantReview,
    @JsonKey(name: 'shipped_by') String? shippedBy,
    @JsonKey(name: 'sold_by_type') String? soldByType,
    @JsonKey(name: 'sold_by_name') String? soldBy,
    ReviewsModel? review,
    @JsonKey(name: 'transaction_url') String? transactionUrl,
  }) = _PharmacyConfirmOrderModel;

  factory PharmacyConfirmOrderModel.fromJson(Map<String, dynamic> json) =>
      _$PharmacyConfirmOrderModelFromJson(json);

  @override
  PharmacyConfirmOrderDomainModel toDomainModel() {
    return PharmacyConfirmOrderDomainModel(
      id: id,
      transactionUrl: transactionUrl,
      orderDetails: id != null
          ? OrderDetails(
              id: id!,
              variation: variation ?? '',
              quantity: quantity ?? 0,
              deliveryType: deliveryType ?? '',
              price: price ?? '',
              availableReturnQty: availableReturnQty ?? 0,
              isAvailableReview: isAvailableReview ?? false,
              msgCantReview: msgCantReview ?? '',
              product: product?.toDomainModel(),
              review: review?.toDomainModel(),
              shippedBy: shippedBy,
              tax: tax,
              soldBy: soldBy ?? '',
              soldByType: soldByType ?? '',
            )
          : null,
    );
  }
}
