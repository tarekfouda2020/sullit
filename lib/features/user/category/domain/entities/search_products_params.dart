import 'package:flutter_tdd/core/helpers/user_location_params.dart';
import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class SearchProductsParams extends BaseDomainModel {
  final String? searchKey;
  final num? minPrice;
  final num? maxPrice;
  final int? catId;
  final int? brandId;
  final int? sellerId;
  final List<String?>? color;
  final List<String>? attributes;
  final int currentPage;
  final int pageSize;
  final bool refresh;
  final UserLocationParams userLocationParams;

  SearchProductsParams({
    this.searchKey,
    this.minPrice,
    this.maxPrice,
    this.catId,
    this.brandId,
    this.color,
    this.attributes,
    this.currentPage = 1,
    this.pageSize = 10,
    this.refresh = true,
    this.sellerId,
    UserLocationParams? userLocationParams,
  }) : userLocationParams = userLocationParams ?? UserLocationParams() ;



  Map<String, dynamic> toJson() => {
        "paginate": pageSize,
        "page": currentPage,
        if (minPrice != null && minPrice != 0) "min_price": minPrice,
        if (maxPrice != null && maxPrice != 0) "max_price": maxPrice,
         if(catId!= null) "category_id": catId,
        if (brandId != null) "brand_id": brandId,
        if (sellerId != null) "seller_id": sellerId,
        if (color != null && color != []) "color": color,
        if (attributes != null && attributes != [])
          "selected_attribute_values[]": attributes,
        if (searchKey != null && searchKey?.isNotEmpty == true)
          "keyword": searchKey,
        ...userLocationParams.toJson(),
      };
}
