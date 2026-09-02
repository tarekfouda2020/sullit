import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/cart_preview_removed_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_preview_removed_item_model.freezed.dart';
part 'cart_preview_removed_item_model.g.dart';

@freezed
@immutable
class CartPreviewRemovedItemModel extends BaseApiModel<CartPreviewRemovedItem>
    with _$CartPreviewRemovedItemModel {
  const CartPreviewRemovedItemModel._();

  @JsonSerializable(explicitToJson: true)
  const factory CartPreviewRemovedItemModel({
    required int id,
    @JsonKey(name: "product_id") required int productId,
    @JsonKey(name: "product_name") required String productName,
    required String reason,
  }) = _CartPreviewRemovedItemModel;

  factory CartPreviewRemovedItemModel.fromJson(Map<String, dynamic> json) =>
      _$CartPreviewRemovedItemModelFromJson(json);

  @override
  CartPreviewRemovedItem toDomainModel() {
    return CartPreviewRemovedItem(
      id: id,
      productId: productId,
      productName: productName,
      reason: reason,
    );
  }
}
