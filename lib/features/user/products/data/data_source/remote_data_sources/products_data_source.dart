import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/models/api_models/product_model/product_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/product_card_model/product_card_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/home_model/home_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/product_details_model/product_details_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/product_sections_model/product_sections_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/queries_model/queries_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/seller_products_model/seller_products_model.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/popular_products_params.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/product_details_params.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/seller_products_params.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/send_query_params.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/variant_price_params.dart';

abstract class ProductsDataSource {
  Future<Either<Failure, HomeModel>> getHome(bool param);

  Future<Either<Failure, ProductDetailsModel>> getProductDetails(
      ProductDetailsParams param);

  Future<Either<Failure, List<ProductCardModel>>> getPopularProducts(
      PopularProductsParams param);

  Future<Either<Failure, bool>> toggleFavourite(int param);

  Future<Either<Failure, QueriesModel>> sendQuery(SendQueryParams params);

  Future<Either<Failure, ProductModel>> getVariantPrice(
      VariantPriceParams param);

  Future<Either<Failure, List<ProductCardModel>>> getDigitalProducts(bool param);

  Future<Either<Failure, List<ProductSectionsModel>>> getProductSections(
      int param);

  Future<Either<Failure, bool>> toggleFollowing(int param);

  Future<Either<Failure, ProductDetailsModel>> scanProduct(String param);

  Future<Either<Failure, SellerProductsModel>> sellerProducts(
      SellerProductsParams param);
}
