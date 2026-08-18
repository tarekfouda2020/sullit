import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/entities/change_order_payment_params.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/orders.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/repository/purchasing_repository.dart';

class ChangeOrderPayMethod
    implements UseCase<Orders?, ChangeOrderPaymentParams> {
  @override
  Future<Orders?> call(ChangeOrderPaymentParams param) async {
    var result =
        await getIt<PurchasingRepository>().changeOrderPaymentMethod(param);
    return result.fold((l) => null, (r) => r);
  }
}
