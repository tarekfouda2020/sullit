import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/products/data/models/product_card_model/product_card_model.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/sale/data/models/coupon_model/coupon_model.dart';
import 'package:flutter_tdd/features/user/sale/data/models/flash_sale_model/flash_sale_model.dart';
import 'package:flutter_tdd/features/user/sale/data/models/sale_details_model/sale_details_model.dart';
import 'package:flutter_tdd/features/user/sale/domain/entities/offers_params_widget.dart';

abstract class SaleDataSources {
  Future<Either<Failure, List<FlashSaleModel>>> getAllFlashSales(bool param);

  Future<Either<Failure, SaleDetailsModel>> getAlFlashDealProducts(int param);

  Future<Either<Failure, List<CouponModel>>> getCoupons(
      GenericPaginateParams param);

  Future<Either<Failure, List<ProductCardModel>>> getNewArrival(
      OffersParamsWidget param);

  Future<Either<Failure, List<ProductCardModel>>> getOnSale(
      OffersParamsWidget param);

  Future<Either<Failure, List<ProductCardModel>>> getBestRated(
      OffersParamsWidget param);

  Future<Either<Failure, List<ProductCardModel>>> getVipOffers(
      OffersParamsWidget param);

  Future<Either<Failure, List<ProductCardModel>>> getShareholderProducts(
      OffersParamsWidget param);
}
