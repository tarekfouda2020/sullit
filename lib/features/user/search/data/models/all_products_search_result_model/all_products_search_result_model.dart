import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/product_card_model/product_card_model.dart';
import 'package:flutter_tdd/features/user/search/domain/models/all_products_search_domain_resul.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_products_search_result_model.freezed.dart';
part 'all_products_search_result_model.g.dart';

@freezed
class AllProductsSearchResultModel
    extends BaseApiModel<AllProductsSearchDomainResul>
    with _$AllProductsSearchResultModel {
  const AllProductsSearchResultModel._();
  @JsonSerializable(explicitToJson: true)
  factory AllProductsSearchResultModel({required List<ProductCardModel> products}) =
      _AllProductsSearchResultModel;

  factory AllProductsSearchResultModel.fromJson(Map<String, dynamic> json) =>
      _$AllProductsSearchResultModelFromJson(json);

  @override
  AllProductsSearchDomainResul toDomainModel() {
    return AllProductsSearchDomainResul(
        products: products.map((e) => e.toDomainModel()).toList());
  }
}
