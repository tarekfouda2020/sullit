import 'package:flutter_tdd/core/helpers/user_location_params.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';

class SearchResultParams {
  String searchTxt;
  bool refresh;
  final GenericPaginateParams paginateParams;
  final UserLocationParams userLocationParams;

  SearchResultParams({
    required this.searchTxt,
    required this.paginateParams,
    this.refresh = true,
    UserLocationParams? userLocationParams,
  }) : userLocationParams = userLocationParams ?? UserLocationParams();

  String paramToQuery() {
    String header = paginateParams.paramsToQuery();
    if (searchTxt.isNotEmpty) {
      header = "?keyword=$searchTxt&${header.replaceAll("?", "")}";
    }
    return header;
  }

  Map<String, dynamic> toJson() => {
        ...paginateParams.toJson(),
        if (searchTxt.trim().isNotEmpty) "keyword": searchTxt,
        ...userLocationParams.toJson(),
      };
}
