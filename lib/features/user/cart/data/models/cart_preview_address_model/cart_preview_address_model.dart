import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/cart/data/models/cart_preview_seller_model/cart_preview_seller_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/cart_preview_address.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_preview_address_model.freezed.dart';
part 'cart_preview_address_model.g.dart';

@freezed
@immutable
class CartPreviewAddressModel extends BaseApiModel<CartPreviewAddress>
    with _$CartPreviewAddressModel {
  const CartPreviewAddressModel._();

  @JsonSerializable(explicitToJson: true)
  const factory CartPreviewAddressModel({
    @JsonKey(name: "has_changes") required bool hasChanges,
    @Default([]) List<CartPreviewSellerModel> sellers,
  }) = _CartPreviewAddressModel;

  factory CartPreviewAddressModel.fromJson(Map<String, dynamic> json) =>
      _$CartPreviewAddressModelFromJson(json);

  @override
  CartPreviewAddress toDomainModel() {
    return CartPreviewAddress(
      hasChanges: hasChanges,
      sellers: sellers.map((e) => e.toDomainModel()).toList(),
    );
  }
}
