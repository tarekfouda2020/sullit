import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_params.dart';
import 'package:flutter_tdd/features/user/products/data/data_source/locale_data_sources/compare_products_db.dart';
import 'package:flutter_tdd/features/user/products/data/data_source/remote_data_sources/products_data_source.dart';
import 'package:flutter_tdd/features/user/products/data/models/home_model/home_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/product_details_model/product_details_model.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/popular_products_params.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/send_query_params.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/variant_price_params.dart';
import 'package:flutter_tdd/features/user/products/domain/models/home_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_details_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_sections.dart';
import 'package:flutter_tdd/features/user/products/domain/models/queries.dart';
import 'package:flutter_tdd/features/user/products/domain/repository/products_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ProductsRepository)
class ImplProductsRepository extends ProductsRepository with ModelToDomain {
  var dataSources = getIt<ProductsDataSource>();

  @override
  Future<Either<Failure, HomeDomainModel>> getHome(bool param) async {
    var result = await dataSources.getHome(param);
    return toDomainResult<HomeDomainModel, HomeModel>(result);
  }

  @override
  Future<Either<Failure, ProductDetailsDomainModel>> getProductDetails(
      GenericParams param) async {
    var result = await dataSources.getProductDetails(param);
    return toDomainResult<ProductDetailsDomainModel, ProductDetailsModel>(
        result);
  }

  @override
  Future<Either<Failure, List<Product>>> getPopularProducts(
      PopularProductsParams param) async {
    var result = await dataSources.getPopularProducts(param);
    return toDomainResultList(result);
  }

  @override
  Future<Either<Failure, bool>> toggleFavourite(int param) async {
    return dataSources.toggleFavourite(param);
  }

  @override
  Future<List<ProductsTableData>> getItems() {
    return ComparedProductsDb().getItems();
  }

  @override
  Future<Either<Failure, Queries>> sendQuery(SendQueryParams params) async {
    var result = await dataSources.sendQuery(params);
    return toDomainResult(result);
  }

  @override
  Future<Either<Failure, Product>> getVariantPrice(
      VariantPriceParams param) async {
    var result = await dataSources.getVariantPrice(param);
    return toDomainResult(result);
  }

  @override
  Future<Either<Failure, List<Product>>> getDigitalProducts(bool param) async {
    var result = await dataSources.getDigitalProducts(param);
    return toDomainResultList(result);
  }

  @override
  Future<Either<Failure, List<ProductSections>>> getProductSections(int param) async{
    var result = await dataSources.getProductSections(param);
    return toDomainResultList(result);
  }
}
