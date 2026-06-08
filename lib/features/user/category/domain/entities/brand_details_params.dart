import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';

class BrandDetailsParams {
  int brandId;
  bool refresh = true;
  final GenericPaginateParams paginateParams;
  BrandDetailsParams(
      {required this.paginateParams,
      required this.brandId,
      required this.refresh});

  String get url => "$brandId${paginateParams.paramsToQuery()}";
}
