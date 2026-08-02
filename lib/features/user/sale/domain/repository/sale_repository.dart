import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_card.dart';
import 'package:flutter_tdd/features/user/sale/domain/entities/offers_params_widget.dart';
import 'package:flutter_tdd/features/user/sale/domain/models/coupon.dart';
import 'package:flutter_tdd/features/user/sale/domain/models/flash_sale.dart';
import 'package:flutter_tdd/features/user/sale/domain/models/sale_details.dart';

abstract class SaleRepository {
  Future<Either<Failure, List<FlashSale>>> getAllFlashSales(bool param);

  Future<Either<Failure, SaleDetailsDomainModel>> getAlFlashDealProducts(
      int param);

  Future<Either<Failure, List<Coupon>>> getCoupons(GenericPaginateParams param);

  Future<Either<Failure, List<ProductCard>>> getNewArrival(
      OffersParamsWidget param);

  Future<Either<Failure, List<ProductCard>>> getOnSale(OffersParamsWidget param);

  Future<Either<Failure, List<ProductCard>>> getBestRated(OffersParamsWidget param);

  Future<Either<Failure, List<ProductCard>>> getVipOffers(OffersParamsWidget param);

  Future<Either<Failure, List<ProductCard>>> getShareholderProducts(
      OffersParamsWidget param);
}
