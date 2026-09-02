import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/cart_preview_branch.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_preview_branch_model.freezed.dart';
part 'cart_preview_branch_model.g.dart';

@freezed
@immutable
class CartPreviewBranchModel extends BaseApiModel<CartPreviewBranch>
    with _$CartPreviewBranchModel {
  const CartPreviewBranchModel._();

  @JsonSerializable(explicitToJson: true)
  const factory CartPreviewBranchModel({
    required int id,
    required String name,
  }) = _CartPreviewBranchModel;

  factory CartPreviewBranchModel.fromJson(Map<String, dynamic> json) =>
      _$CartPreviewBranchModelFromJson(json);

  @override
  CartPreviewBranch toDomainModel() {
    return CartPreviewBranch(
      id: id,
      name: name,
    );
  }
}
