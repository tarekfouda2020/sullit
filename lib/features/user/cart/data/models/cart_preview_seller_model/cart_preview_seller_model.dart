import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/cart/data/models/cart_preview_branch_model/cart_preview_branch_model.dart';
import 'package:flutter_tdd/features/user/cart/data/models/cart_preview_removed_item_model/cart_preview_removed_item_model.dart';
import 'package:flutter_tdd/features/user/cart/data/models/cart_preview_updated_item_model/cart_preview_updated_item_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/cart_preview_seller.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_preview_seller_model.freezed.dart';
part 'cart_preview_seller_model.g.dart';

@freezed
@immutable
class CartPreviewSellerModel extends BaseApiModel<CartPreviewSeller>
    with _$CartPreviewSellerModel {
  const CartPreviewSellerModel._();

  @JsonSerializable(explicitToJson: true)
  const factory CartPreviewSellerModel({
    @JsonKey(name: "owner_id") required int ownerId,
    @JsonKey(name: "seller_name") required String sellerName,
    @JsonKey(name: "shop_name") required String shopName,
    @JsonKey(name: "branch_changed") required bool branchChanged,
    @JsonKey(name: "from_branch") CartPreviewBranchModel? fromBranch,
    @JsonKey(name: "to_branch") CartPreviewBranchModel? toBranch,
    @JsonKey(name: "delivery_available") required bool deliveryAvailable,
    @JsonKey(name: "delivery_message") String? deliveryMessage,
    @Default([]) List<CartPreviewRemovedItemModel> removed,
    @Default([]) List<CartPreviewUpdatedItemModel> updated,
  }) = _CartPreviewSellerModel;

  factory CartPreviewSellerModel.fromJson(Map<String, dynamic> json) =>
      _$CartPreviewSellerModelFromJson(json);

  @override
  CartPreviewSeller toDomainModel() {
    return CartPreviewSeller(
      ownerId: ownerId,
      sellerName: sellerName,
      shopName: shopName,
      branchChanged: branchChanged,
      fromBranch: fromBranch?.toDomainModel(),
      toBranch: toBranch?.toDomainModel(),
      deliveryAvailable: deliveryAvailable,
      deliveryMessage: deliveryMessage,
      removed: removed.map((e) => e.toDomainModel()).toList(),
      updated: updated.map((e) => e.toDomainModel()).toList(),
    );
  }
}
