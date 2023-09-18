import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_params.dart';
import 'package:flutter_tdd/features/user/customers_products/domain/models/customer_product_details.dart';
import 'package:flutter_tdd/features/user/customers_products/domain/repository/cus_products_repository.dart';

class GetCustomerProductDetails
    extends UseCase<CustomersProductDetails?, GenericParams> {
  @override
  Future<CustomersProductDetails?> call(GenericParams params) async {
    var result =
        await getIt<CusProductRepository>().getCustomerProductDetails(params);
    return result.fold((l) => null, (r) => r);
  }
}
