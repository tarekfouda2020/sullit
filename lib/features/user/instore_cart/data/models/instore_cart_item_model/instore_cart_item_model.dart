import 'package:freezed_annotation/freezed_annotation.dart';

part 'instore_cart_item_model.freezed.dart';
part 'instore_cart_item_model.g.dart';

@freezed
class InstoreCartItemModel with _$InstoreCartItemModel {
  const InstoreCartItemModel._();

  const factory InstoreCartItemModel({
    required int id,
    @JsonKey(name: 'variant_id') required int variantId,
    required int qnt,
    required num price,
    required String name,
    required String image,
    @Default(false) @JsonKey(name: 'is_fresh') bool isFresh,
    @JsonKey(name: 'current_stock') int? currentStock,
  }) = _InstoreCartItemModel;

  factory InstoreCartItemModel.fromJson(Map<String, dynamic> json) =>
      _$InstoreCartItemModelFromJson(json);

  bool canSetQuantity(int quantity) {
    if (isFresh) return true;
    if (currentStock == null) return true;
    return quantity <= currentStock!;
  }
}
