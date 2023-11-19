import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/core/models/api_models/product_model/product_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/product_queries_model/product_queries_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_details_domain_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_details_model.freezed.dart';
part 'product_details_model.g.dart';

@freezed
@immutable
class ProductDetailsModel extends BaseApiModel<ProductDetailsDomainModel>
    with _$ProductDetailsModel {
  const ProductDetailsModel._();

  @JsonSerializable(explicitToJson: true)
  const factory ProductDetailsModel({
    required ProductModel product,
    @JsonKey(name: 'related_products')
        required List<ProductModel> relatedProducts,
    @JsonKey(name: 'top_products') required List<ProductModel> topProducts,
    @JsonKey(name: 'product_queries')
        required ProductQueriesModel productQueries,
  }) = _ProductDetailsModel;

  factory ProductDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsModelFromJson(json);

  @override
  ProductDetailsDomainModel toDomainModel() {
    return ProductDetailsDomainModel(
      topProducts: topProducts.map((e) => e.toDomainModel()).toList(),
      relatedProducts: relatedProducts.map((e) => e.toDomainModel()).toList(),
      productQueries: productQueries.toDomainModel(),
      product: product.toDomainModel(),
    );
  }
}
