import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/payment_domain_model.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/repository/classified_products_repository.dart';

class GetPaymentMethods implements UseCase<List<PaymentMethodDomainModel>, bool> {
  @override
  Future<List<PaymentMethodDomainModel>> call(bool param) async {
    var result =
    await getIt<ClassifiedProductsRepository>().getPaymentMethods(param);
    return result.fold((l) => [], (r) => r);
  }
}
