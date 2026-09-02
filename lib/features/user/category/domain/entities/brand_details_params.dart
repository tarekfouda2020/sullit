import 'package:flutter_tdd/core/helpers/user_location_params.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';

class BrandDetailsParams {
  int brandId;
  bool refresh = true;
  final GenericPaginateParams paginateParams;
  final UserLocationParams userLocationParams;

  BrandDetailsParams({
    required this.paginateParams,
    required this.brandId,
    required this.refresh,
    UserLocationParams? userLocationParams,
  }) : userLocationParams = userLocationParams ?? UserLocationParams();

  String get url => "$brandId${paginateParams.paramsToQuery()}";


  Map<String, dynamic> toJson() => {
        ...paginateParams.toJson(),
        "brand_id": brandId,
        ...userLocationParams.toJson(),
      };


}
