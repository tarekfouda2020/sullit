import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_params.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/cus_product.dart';
import 'package:flutter_tdd/features/user/customers_products/domain/entities/customer_products_params.dart';
import 'package:flutter_tdd/features/user/customers_products/domain/models/customer_product.dart';
import 'package:flutter_tdd/features/user/customers_products/domain/models/customer_product_details.dart';
import 'package:flutter_tdd/features/user/customers_products/domain/models/product_specifications.dart';

abstract class CusProductRepository {
  Future<Either<Failure, ProductSpecifications>> getProductsSpecifications(
      CustomerProductsParams params);

  Future<Either<Failure, List<CustomerProduct>>> getCustomerProducts(
      CustomerProductsParams params);

  Future<Either<Failure, CustomersProductDetails>> getCustomerProductDetails(
      GenericParams params);
}
