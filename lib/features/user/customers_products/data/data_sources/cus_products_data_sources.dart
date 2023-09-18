import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_params.dart';
import 'package:flutter_tdd/features/user/customers_products/data/models/customer_product_details_model/customer_product_details_model.dart';
import 'package:flutter_tdd/features/user/customers_products/data/models/customer_product_model/customer_product_model.dart';
import 'package:flutter_tdd/features/user/customers_products/data/models/product_specifications_model/product_specifications_model.dart';
import 'package:flutter_tdd/features/user/customers_products/domain/entities/customer_products_params.dart';

abstract class CusProductsDataSources {
  Future<Either<Failure, ProductSpecificationsModel>> getProductsSpecifications(
      CustomerProductsParams params);

  Future<Either<Failure, List<CustomerProductModel>>> getCustomerProducts(
      CustomerProductsParams params);

  Future<Either<Failure, CustomerProductDetailsModel>>
      getCustomerProductDetails(GenericParams params);
}
