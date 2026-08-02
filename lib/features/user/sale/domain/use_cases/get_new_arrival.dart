import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_card.dart';
import 'package:flutter_tdd/features/user/sale/domain/entities/offers_params_widget.dart';
import 'package:flutter_tdd/features/user/sale/domain/repository/sale_repository.dart';

class GetNewArrival extends UseCase<List<ProductCard>, OffersParamsWidget> {
  @override
  Future<List<ProductCard>> call(OffersParamsWidget params) async {
    var result = await getIt<SaleRepository>().getNewArrival(params);
    return result.fold((l) => [], (r) => r);
  }
}
