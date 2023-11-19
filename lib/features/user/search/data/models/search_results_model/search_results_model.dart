import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/core/models/api_models/product_model/product_model.dart';
import 'package:flutter_tdd/features/user/category/data/models/category_model/category_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/shop_model/shop_model.dart';
import 'package:flutter_tdd/features/user/search/domain/models/search_results.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_results_model.freezed.dart';
part 'search_results_model.g.dart';

@freezed
@immutable
class SearchResultsModel extends BaseApiModel<SearchResults>
    with _$SearchResultsModel {
  const SearchResultsModel._();

  @JsonSerializable(explicitToJson: true)
  const factory SearchResultsModel({
    @JsonKey(name: 'popular_suggestions') required List<String> suggestions,
    @JsonKey(name: 'products') required List<ProductModel> products,
    @JsonKey(name: 'categories') required List<CategoryModel> categories,
    @JsonKey(name: 'shops') required List<ShopModel> shops,
  }) = _SearchResultsModel;

  factory SearchResultsModel.fromJson(Map<String, dynamic> json) =>
      _$SearchResultsModelFromJson(json);

  @override
  SearchResults toDomainModel() {
    return SearchResults(
      products: products.map((e) => e.toDomainModel()).toList(),
      categories: categories.map((e) => e.toDomainModel()).toList(),
      shops: shops.map((e) => e.toDomainModel()).toList(),
      suggestions: suggestions,
    );
  }
}
