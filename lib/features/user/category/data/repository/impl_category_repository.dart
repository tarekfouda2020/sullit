import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/models/api_models/brand_model/brand_model.dart';
import 'package:flutter_tdd/core/models/domain_models/brand_domain_model.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/features/user/category/data/data_sources/category_data_sources.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/brand_details_params.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/brands_params.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/search_products_params.dart';
import 'package:flutter_tdd/features/user/category/domain/models/category.dart';
import 'package:flutter_tdd/features/user/category/domain/models/sub_category.dart';
import 'package:flutter_tdd/features/user/category/domain/repository/category_repository.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CategoryRepository)
class ImplCategoryRepository extends CategoryRepository with ModelToDomain {
  var dataSources = getIt<CategoryDataSources>();

  @override
  Future<Either<Failure, List<BrandDomainModel>>> getBrands(
      BrandsParams params) async {
    var result = await dataSources.getBrands(params);
    return toDomainResultList<BrandDomainModel, BrandModel>(result);
  }

  @override
  Future<Either<Failure, List<Category>>> getAllCategories(
      bool param) async {
    var countries = await dataSources.getAllCategories(param);
    return toDomainResultList(countries);
  }

  @override
  Future<Either<Failure, List<Product>>> getBrandProducts(
      BrandDetailsParams params) async {
    var result = await dataSources.getBrandProducts(params);
    return toDomainResultList(result);
  }

  @override
  Future<Either<Failure, SubCategory>> getSubCategories(
      SearchProductsParams params) async {
    var result = await dataSources.getSubCategories(params);
    return toDomainResult(result);
  }

  @override
  Future<Either<Failure, List<Product>>> getCategoryProducts(
      SearchProductsParams params) async {
    var result = await dataSources.getCategoryProducts(params);
    return toDomainResultList(result);
  }
}
