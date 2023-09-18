import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/customers_products/domain/entities/customer_products_params.dart';
import 'package:flutter_tdd/features/user/customers_products/domain/models/product_specifications.dart';
import 'package:flutter_tdd/features/user/customers_products/domain/repository/cus_products_repository.dart';

class GetProductSpecifications
    extends UseCase<ProductSpecifications?, CustomerProductsParams> {
  @override
  Future<ProductSpecifications?> call(CustomerProductsParams params) async {
    var result =
        await getIt<CusProductRepository>().getProductsSpecifications(params);
    return result.fold((l) => null, (r) => r);
  }
}
