import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/sale/domain/models/coupon.dart';
import 'package:flutter_tdd/features/user/sale/domain/models/flash_sale.dart';
import 'package:flutter_tdd/features/user/sale/domain/models/sale_details.dart';

abstract class SaleRepository {
  Future<Either<Failure, List<FlashSale>>> getAllFlashSales(bool param);

  Future<Either<Failure, SaleDetailsDomainModel>> getAlFlashDealProducts(
      int param);

  Future<Either<Failure, List<Coupon>>> getCoupons(GenericPaginateParams param);

  Future<Either<Failure, List<Product>>> getNewArrival(bool param);

  Future<Either<Failure, List<Product>>> getOnSale(bool param);

  Future<Either<Failure, List<Product>>> getBestRated(bool param);

  Future<Either<Failure, List<Product>>> getVipOffers(bool param);

  Future<Either<Failure, List<Product>>> getShareholderProducts(
      GenericPaginateParams param);
}
