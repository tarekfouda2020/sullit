import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_params.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/orders.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/repository/purchasing_repository.dart';

class GetOrderDetails extends UseCase<Orders?, GenericParams> {
  @override
  Future<Orders?> call(GenericParams params) async {
    var result = await getIt<PurchasingRepository>().getOrderDetails(params);
    return result.fold((l) => null, (r) => r);
  }
}
