import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/models/api_models/brand_model/brand_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/product_card_model/product_card_model.dart';
import 'package:flutter_tdd/features/user/category/data/models/category_model/category_model.dart';
import 'package:flutter_tdd/features/user/category/data/models/sub_category_model/sub_category_model.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/brand_details_params.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/brands_params.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/search_products_params.dart';

abstract class CategoryDataSources {
  Future<Either<Failure, List<CategoryModel>>> getAllCategories(bool param);

  Future<Either<Failure, List<CategoryModel>>> getSideSubCats(int param);

  Future<Either<Failure, SubCategoryModel>> getSubCategories(
      SearchProductsParams params);

  Future<Either<Failure, List<BrandModel>>> getBrands(BrandsParams params);

  Future<Either<Failure, List<ProductCardModel>>> getBrandProducts(
      BrandDetailsParams params);

  Future<Either<Failure, List<ProductCardModel>>> getCategoryProducts(
      SearchProductsParams params);
}
