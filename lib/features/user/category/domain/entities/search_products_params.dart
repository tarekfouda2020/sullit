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

  String paramsToQuery() {
    var url = "?paginate=$pageSize&page=$currentPage";
    if(minPrice!=0 && minPrice!=null){
      url = "$url&min_price=$minPrice";
    }
    if(maxPrice!=0 && maxPrice!=0){
      url = "$url&max_price=$maxPrice";
    }
    if(catId!=null){
      url = "$url&category_id=$catId";
    }
    if(brandId!=null){
      url = "$url&brand_id=$brandId";
    }
    if(attributes!=null){
      url = "$url&selected_attribute_values[]=$attributes";
    }
    return url;
  }

  Map<String, dynamic> toJson() => {
        "paginate": pageSize,
        "page": currentPage,
       if(minPrice!=null && minPrice!=0) "min_price": minPrice,
    if(maxPrice!=null && maxPrice!=0) "max_price": maxPrice,
        "category_id": catId,
    if(brandId!=null) "brand_id": brandId,
      if(color!=null && color!=[])  "color": color,
       if(attributes!=null && attributes!=[]) "selected_attribute_values[]": attributes,
      };
}
