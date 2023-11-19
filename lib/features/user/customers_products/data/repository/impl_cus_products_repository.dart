import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_params.dart';
import 'package:flutter_tdd/features/user/customers_products/data/data_sources/cus_products_data_sources.dart';
import 'package:flutter_tdd/features/user/customers_products/domain/entities/customer_products_params.dart';
import 'package:flutter_tdd/features/user/customers_products/domain/models/customer_product.dart';
import 'package:flutter_tdd/features/user/customers_products/domain/models/customer_product_details.dart';
import 'package:flutter_tdd/features/user/customers_products/domain/models/product_specifications.dart';
import 'package:flutter_tdd/features/user/customers_products/domain/repository/cus_products_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CusProductRepository)
class ImplCusProductsRepository extends CusProductRepository
    with ModelToDomain {
  var dataSources = getIt<CusProductsDataSources>();

  @override
  Future<Either<Failure, ProductSpecifications>> getProductsSpecifications(
      CustomerProductsParams params) async {
    var result = await dataSources.getProductsSpecifications(params);
    return toDomainResult(result);
  }

  @override
  Future<Either<Failure, List<CustomerProduct>>> getCustomerProducts(
      CustomerProductsParams params) async {
    var result = await dataSources.getCustomerProducts(params);
    return toDomainResultList(result);
  }

  @override
  Future<Either<Failure, CustomersProductDetails>> getCustomerProductDetails(
      GenericParams params) async {
    var result = await dataSources.getCustomerProductDetails(params);
    return toDomainResult(result);
  }
}
