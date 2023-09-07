import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/entities/return_order_params.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/repository/purchasing_repository.dart';

class ReturnOrder extends UseCase<bool, ReturnOrderParams> {
  @override
  Future<bool> call(ReturnOrderParams params) async {
    var result = await getIt<PurchasingRepository>().returnOrder(params);
    return result.fold((l) => false, (r) => r);
  }
}
