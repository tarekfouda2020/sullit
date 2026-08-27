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
    @JsonKey(name: 'seller_name') @Default('') String sellerName,
  }) = _InstoreCartItemModel;

  factory InstoreCartItemModel.fromJson(
      Map<String, dynamic> json,
      ) =>
      _$InstoreCartItemModelFromJson(json);

  double get totalPrice => (price * qnt).toDouble();
}
