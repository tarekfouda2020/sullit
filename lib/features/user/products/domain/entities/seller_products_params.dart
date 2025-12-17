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

  SellerProductsParams({
    required this.sellerId,
    required this.paginateParams,
    this.minPrice,
    this.maxPrice,
    this.brandId,
    this.color,
    this.keyword,
    this.attributes
  });



  String paramsToQuery() {
    String header = paginateParams.paramsToQuery();
    if(minPrice!=null){
      header = '$header&min_price=$minPrice';
    }
    if(maxPrice!=null){
      header = '$header&max_price=$maxPrice';
    }
    if(brandId!=null){
      header = '$header&brand_id=$brandId';
    }
    if(keyword!=null && keyword?.isNotEmpty == true){
      header = "$header&keyword=$keyword";
    }
    return header;
  }


}