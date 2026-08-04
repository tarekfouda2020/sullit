import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';

class ShopCategoryParams {
  final int shopId;
  final GenericPaginateParams paginParams;

  ShopCategoryParams({required this.shopId, required this.paginParams});

  Map<String, dynamic> toJson() => {...paginParams.toJson()};
}
