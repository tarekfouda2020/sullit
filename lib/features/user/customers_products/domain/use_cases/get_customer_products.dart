import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/cus_product.dart';
import 'package:flutter_tdd/features/user/customers_products/domain/entities/customer_products_params.dart';
import 'package:flutter_tdd/features/user/customers_products/domain/models/customer_product.dart';
import 'package:flutter_tdd/features/user/customers_products/domain/repository/cus_products_repository.dart';

class GetCustomerProducts
    extends UseCase<List<CustomerProduct>, CustomerProductsParams> {
  @override
  Future<List<CustomerProduct>> call(CustomerProductsParams params) async {
    var result =
        await getIt<CusProductRepository>().getCustomerProducts(params);
    return result.fold((l) => [], (r) => r);
  }
}
