import 'package:flutter_tdd/features/user/instore_cart/data/models/instore_cart_item_model/instore_cart_item_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'instore_cart_model.freezed.dart';
part 'instore_cart_model.g.dart';

@freezed
class InstoreCartModel with _$InstoreCartModel {
  @JsonSerializable(explicitToJson: true)
  const factory InstoreCartModel({
    @JsonKey(name: 'seller_id') required int sellerId,
    @JsonKey(name: 'seller_name') @Default('') String sellerName,
    @JsonKey(name: 'sub_total') required num subTotal,
    required List<InstoreCartItemModel> items,
  }) = _InstoreCartModel;

  factory InstoreCartModel.fromJson(Map<String, dynamic> json) =>
      _$InstoreCartModelFromJson(json);
}
