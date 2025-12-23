import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/sale/domain/repository/sale_repository.dart';

class GetShareholderProducts
    extends UseCase<List<Product>, GenericPaginateParams> {
  @override
  Future<List<Product>> call(GenericPaginateParams params) async {
    var result = await getIt<SaleRepository>().getShareholderProducts(params);
    return result.fold((l) => [], (r) => r);
  }
}
