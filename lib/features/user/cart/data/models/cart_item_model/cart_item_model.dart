import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/cart/data/models/cart_option_model/cart_option_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/general_cart_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_item_model.freezed.dart';

part 'cart_item_model.g.dart';

@freezed
@immutable
class CartItemModel extends BaseApiModel<GeneralCartItem> with _$CartItemModel {
  const CartItemModel._();

  @JsonSerializable(explicitToJson: true)
  const factory CartItemModel({
    required int id,
    @JsonKey(name: "owner_id") required int ownerId,
    @JsonKey(name: "loyalty_points") required int loyaltyPoints,
    @JsonKey(name: "thumbnail_image") required String thumbnailImage,
    required String name,
    required String price,
    required String tax,
    required int quantity,
    required double rating,
    @JsonKey(name: "is_digital") required bool isDigital,
    @JsonKey(name: "has_special_loyalty_points")
    required bool hasSpecialLoyaltyPoints,
    required String total,
    @JsonKey(name: "calculable_total") required num calculableTotal,
    @JsonKey(name: "currency_symbol") required String currencySymbol,
    @JsonKey(name: "product_id") required int productId,
    @JsonKey(name: "min_qty") required int minQty,
    @JsonKey(name: "stock_qty") required int stockQty,
    @JsonKey(name: "is_wishlist") required bool isWishlist,
    @JsonKey(name: "prescription_required") bool? prescriptionRequired,
    @JsonKey(name: "insurance_eligible") bool? insuranceEligible,
    @JsonKey(name: "sold_by_type") required String soldByType,
    @JsonKey(name: "sold_by_name") required String soldBy,
    @JsonKey(name: "shop_id") required int? shopId,
    @JsonKey(name: "branch_id") required int? branchId,
    @JsonKey(name: "cart_options") List<CartOptionModel>? cartOptions,
  }) = _CartItemModel;

  factory CartItemModel.fromJson(Map<String, dynamic> json) =>
      _$CartItemModelFromJson(json);

  @override
  GeneralCartItem toDomainModel() {
    return GeneralCartItem(
        id: id,
        ownerId: ownerId,
        thumbnailImage: thumbnailImage,
        name: name,
        price: price,
        tax: tax,
        quantity: quantity,
        isDigital: isDigital,
        total: total,
        calculableTotal: calculableTotal,
        currencySymbol: currencySymbol,
        productId: productId,
        minQty: minQty,
        stockQty: stockQty,
        isWishlist: isWishlist,
        soldBy: soldBy,
        soldByType: soldByType,
        shopId: shopId,
        rating: rating,
        hasSpecialLoyaltyPoints: hasSpecialLoyaltyPoints,
        loyaltyPoints: loyaltyPoints,
        insuranceEligible: insuranceEligible,
        prescriptionRequired: prescriptionRequired,
        branchId: branchId,
        cartOptions: cartOptions?.map((e) => e.toDomainModel()).toList(),
    );
  }
}
