import 'package:flutter_tdd/core/helpers/location_service.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';

class SearchResultParams {
  String searchTxt;
  bool refresh;
  final GenericPaginateParams paginateParams;
  SearchResultParams({
    required this.searchTxt,
    required this.paginateParams,
    this.refresh = true,
  });

  String paramToQuery() {
    String header = paginateParams.paramsToQuery();
    if (searchTxt.isNotEmpty) {
      header = "?keyword=$searchTxt&${header.replaceAll("?", "")}";
    }
    return '$header${LocationService.instance.locationQuerySuffix()}';
  }
}
