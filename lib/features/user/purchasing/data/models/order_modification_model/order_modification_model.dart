import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/order_modification_domain_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_modification_model.freezed.dart';

part 'order_modification_model.g.dart';

@freezed
class OrderModificationModel extends BaseApiModel<OrderModificationDomainModel>
    with _$OrderModificationModel {
  const OrderModificationModel._();

  const factory OrderModificationModel({
    required int id,
    required String action,
    @JsonKey(name: 'action_label') required String actionLabel,
    required String notes,
    @JsonKey(name: 'old_price') required String? oldPrice,
    @JsonKey(name: 'new_price') required String? newPrice,
    @JsonKey(name: 'old_quantity') required int? oldQuantity,
    @JsonKey(name: 'new_quantity') required int? newQuantity,
    @JsonKey(name: 'old_product') required NewProductModel? oldProduct,
    @JsonKey(name: 'new_product') NewProductModel? newProduct,
    @JsonKey(name: 'old_variation') required String oldVariation,
    @JsonKey(name: 'new_variation') required String newVariation,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _OrderModificationModel;

  factory OrderModificationModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModificationModelFromJson(json);

  @override
  OrderModificationDomainModel toDomainModel() {
   return OrderModificationDomainModel(
        id: id,
        action: action,
        actionLabel: actionLabel,
        notes: notes,
        oldPrice: oldPrice,
        newPrice: newPrice,
        oldQuantity: oldQuantity,
        newQuantity: newQuantity,
        oldProduct: oldProduct?.toDomainModel(),
        oldVariation: oldVariation,
        newVariation: newVariation,
        newProduct: newProduct?.toDomainModel(),
        createdAt: createdAt);
  }
}

@freezed
class NewProductModel extends BaseApiModel<NewProductDomainModel>
    with _$NewProductModel {
  const NewProductModel._();

  const factory NewProductModel({
    required int id,
    required String name,
    required String barcode,
    required String unit,
    @JsonKey(name: 'is_fresh') required bool isFresh,
    @JsonKey(name: 'thumbnail_image') required String thumbnailImage,
  }) = _NewProductModel;

  factory NewProductModel.fromJson(Map<String, dynamic> json) =>
      _$NewProductModelFromJson(json);

  @override
  NewProductDomainModel toDomainModel() {
    return NewProductDomainModel(
      id: id,
      name: name,
      barcode: barcode,
      unit: unit,
      isFresh: isFresh,
      thumbnailImage: thumbnailImage,
    );
  }
}
