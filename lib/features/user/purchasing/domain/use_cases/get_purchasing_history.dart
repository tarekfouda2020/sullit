import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/orders.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/repository/purchasing_repository.dart';

class GetPurchasingHistory
    implements UseCase<List<Orders>, GenericPaginateParams> {
  @override
  Future<List<Orders>> call(GenericPaginateParams param) async {
    var result = await getIt<PurchasingRepository>().getPurchaseHistory(param);
    return result.fold((l) => [], (r) => r);
  }
}
