import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/sale/domain/models/coupon.dart';
import 'package:flutter_tdd/features/user/sale/domain/repository/sale_repository.dart';

class GetCoupons extends UseCase<List<Coupon>, GenericPaginateParams> {
  @override
  Future<List<Coupon>> call(GenericPaginateParams params) async {
    var result = await getIt<SaleRepository>().getCoupons(params);
    return result.fold((l) => [], (r) => r);
  }
}
