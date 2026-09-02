import 'package:flutter_tdd/core/helpers/user_location_params.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';

class SellerProductsParams {
  final int sellerId;
  final GenericPaginateParams paginateParams;
  final double? minPrice;
  final double? maxPrice;
  final int? brandId;
  final List<String?>? color;
  final List<String>? attributes;
  final String? keyword;
  final int? categoryId;
  final int? branchId;
  final UserLocationParams userLocationParams;

  SellerProductsParams({
    required this.sellerId,
    required this.paginateParams,
    this.minPrice,
    this.maxPrice,
    this.brandId,
    this.color,
    this.keyword,
    this.attributes,
    this.branchId,
    this.categoryId,
    UserLocationParams? userLocationParams,
  }) : userLocationParams = userLocationParams ?? UserLocationParams();

  String paramsToQuery() {
    String header = paginateParams.paramsToQuery();
    if (minPrice != null) {
      header = '$header&min_price=$minPrice';
    }
    if (maxPrice != null) {
      header = '$header&max_price=$maxPrice';
    }
    if (brandId != null) {
      header = '$header&brand_id=$brandId';
    }
    if (keyword != null && keyword?.isNotEmpty == true) {
      header = "$header&keyword=$keyword";
    }
    if (categoryId != null) {
      header = "$header&category_id=$categoryId";
    }
    if (branchId != null) {
      header = "$header&branch_id=$branchId";
    }
    return header;
  }

  Map<String, dynamic> toJson() => userLocationParams.toJson();
}
