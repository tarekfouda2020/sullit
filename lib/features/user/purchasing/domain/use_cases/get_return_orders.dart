import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/order_card.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/repository/purchasing_repository.dart';

class GetReturnOrders extends UseCase<List<OrderCardDomainModel>, GenericPaginateParams> {
  @override
  Future<List<OrderCardDomainModel>> call(GenericPaginateParams params) async {
    var result = await getIt<PurchasingRepository>().getReturnOrders(params);
    return result.fold((l) => [], (r) => r);
  }
}
