import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/popular_products_domain_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'popular_product_model.freezed.dart';
part 'popular_product_model.g.dart';

@freezed
@immutable
class PopularProductModel extends BaseApiModel<PopularProductsDomainModel>
    with _$PopularProductModel {
  const PopularProductModel._();

  @JsonSerializable(explicitToJson: true)
  const factory PopularProductModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'banner') String? banner,
    @JsonKey(name: 'products_count') required int productsCount,
  }) = _PopularProductModel;

  factory PopularProductModel.fromJson(Map<String, dynamic> json) =>
      _$PopularProductModelFromJson(json);

  @override
  PopularProductsDomainModel toDomainModel() {
    return PopularProductsDomainModel(
        banner: banner, id: id, name: name, productsCount: productsCount);
  }
}
