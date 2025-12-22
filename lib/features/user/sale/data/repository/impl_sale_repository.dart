import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/sale/data/data_sources/sale_data_sources.dart';
import 'package:flutter_tdd/features/user/sale/domain/models/coupon.dart';
import 'package:flutter_tdd/features/user/sale/domain/models/flash_sale.dart';
import 'package:flutter_tdd/features/user/sale/domain/models/sale_details.dart';
import 'package:flutter_tdd/features/user/sale/domain/repository/sale_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: SaleRepository)
class ImplSaleRepository extends SaleRepository with ModelToDomain {
  var dataSources = getIt<SaleDataSources>();

  @override
  Future<Either<Failure, List<FlashSale>>> getAllFlashSales(bool param) async {
    var result = await dataSources.getAllFlashSales(param);
    return toDomainResultList(result);
  }

  @override
  Future<Either<Failure, SaleDetailsDomainModel>> getAlFlashDealProducts(
      int param) async {
    var result = await dataSources.getAlFlashDealProducts(param);
    return toDomainResult(result);
  }

  @override
  Future<Either<Failure, List<Coupon>>> getCoupons(
      GenericPaginateParams param) async {
    var result = await dataSources.getCoupons(param);
    return toDomainResultList(result);
  }

  @override
  Future<Either<Failure, List<Product>>> getBestRated(bool param) async {
    var result = await dataSources.getBestRated(param);
    return toDomainResultList(result);
  }

  @override
  Future<Either<Failure, List<Product>>> getNewArrival(bool param) async {
    var result = await dataSources.getNewArrival(param);
    return toDomainResultList(result);
  }

  @override
  Future<Either<Failure, List<Product>>> getOnSale(bool param) async {
    var result = await dataSources.getOnSale(param);
    return toDomainResultList(result);
  }

  @override
  Future<Either<Failure, List<Product>>> getVipOffers(bool param) async {
    var result = await dataSources.getVipOffers(param);
    return toDomainResultList(result);
  }

  @override
  Future<Either<Failure, List<Product>>> getShareholderProducts(
      GenericPaginateParams param) async {
    var result = await dataSources.getShareholderProducts(param);
    return toDomainResultList(result);
  }
}
