import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class SearchProductsParams extends BaseDomainModel {
  final String? searchKey;
  final num? minPrice;
  final num? maxPrice;
  final int? catId;
  final int? brandId;
  final List<String?>? color;
  final List<String>? attributes;
  final int currentPage;
  final int pageSize;
  final bool refresh;

  SearchProductsParams(
      {this.searchKey,
      this.minPrice,
      this.maxPrice,
      this.catId,
      this.brandId,
      this.color,
      this.attributes,
      this.currentPage = 1,
      this.pageSize = 12,
      this.refresh = true});

  String paramsToQuery() =>
      "?paginate=$pageSize&page=$currentPage&min_price=$minPrice&max_price=$maxPrice&category_id=$catId&brand_id=$brandId&color=${color?.asMap()}&selected_attribute_values[]=$attributes";

  Map<String, dynamic> toJson() => {
        "paginate": pageSize,
        "page": currentPage,
        "min_price": minPrice,
        "maxPrice": maxPrice,
        "category_id": catId,
        "brand_id": brandId,
        "color": color,
        "selected_attribute_values[]": attributes,
      };
}
