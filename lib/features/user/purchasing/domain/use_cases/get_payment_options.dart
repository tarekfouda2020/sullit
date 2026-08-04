import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/payment_option.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/repository/purchasing_repository.dart';

class GetPaymentOptions implements UseCase<List<PaymentOption>, bool> {
  @override
  Future<List<PaymentOption>> call(bool param) async {
    var result =
        await getIt<PurchasingRepository>().getOrderPaymentOptions(param);
    return result.fold((l) => [], (r) => r);
  }
}
