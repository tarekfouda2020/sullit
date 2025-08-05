import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/models/api_models/product_model/product_model.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/sale/data/models/coupon_model/coupon_model.dart';
import 'package:flutter_tdd/features/user/sale/data/models/flash_sale_model/flash_sale_model.dart';
import 'package:flutter_tdd/features/user/sale/data/models/sale_details_model/sale_details_model.dart';

abstract class SaleDataSources {
  Future<Either<Failure, List<FlashSaleModel>>> getAllFlashSales(bool param);

  Future<Either<Failure, SaleDetailsModel>> getAlFlashDealProducts(int param);

  Future<Either<Failure, List<CouponModel>>> getCoupons(
      GenericPaginateParams param);

  Future<Either<Failure, List<ProductModel>>> getNewArrival(bool param);

  Future<Either<Failure, List<ProductModel>>> getOnSale(bool param);

  Future<Either<Failure, List<ProductModel>>> getBestRated(bool param);

  Future<Either<Failure, List<ProductModel>>> getVipOffers(bool param);
}
