import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';

class SellerProductsParams {

  final int sellerId;
  final GenericPaginateParams paginateParams;

  SellerProductsParams({required this.sellerId, required this.paginateParams});

}