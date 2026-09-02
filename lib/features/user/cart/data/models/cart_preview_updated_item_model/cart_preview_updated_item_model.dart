import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/cart_preview_updated_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_preview_updated_item_model.freezed.dart';
part 'cart_preview_updated_item_model.g.dart';

@freezed
@immutable
class CartPreviewUpdatedItemModel extends BaseApiModel<CartPreviewUpdatedItem>
    with _$CartPreviewUpdatedItemModel {
  const CartPreviewUpdatedItemModel._();

  @JsonSerializable(explicitToJson: true)
  const factory CartPreviewUpdatedItemModel({
    required int id,
    @JsonKey(name: "product_id") required int productId,
    @JsonKey(name: "product_name") required String productName,
    @JsonKey(name: "old_quantity") required int oldQuantity,
    required int quantity,
  }) = _CartPreviewUpdatedItemModel;

  factory CartPreviewUpdatedItemModel.fromJson(Map<String, dynamic> json) =>
      _$CartPreviewUpdatedItemModelFromJson(json);

  @override
  CartPreviewUpdatedItem toDomainModel() {
    return CartPreviewUpdatedItem(
      id: id,
      productId: productId,
      productName: productName,
      oldQuantity: oldQuantity,
      quantity: quantity,
    );
  }
}
