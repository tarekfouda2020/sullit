import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';

class OffersParamsWidget {
  final GenericPaginateParams paginateParams;
  final String? keyword;
  final int? usePagination;
  final bool? isVipProducts;
  OffersParamsWidget({
    required this.paginateParams,
    this.keyword,
    this.isVipProducts = false,
    this.usePagination = 1,
  });

  String getUrl() {
    String paginateHeader = paginateParams.paramsToQuery();
    String url = paginateHeader;
    if (isVipProducts == false) {
      url = "$url&with_pagination=$usePagination";
    }
    if (keyword != null && keyword?.isNotEmpty == true) {
      url = "$url&keyword=$keyword";
    }
    return url;
  }
}
