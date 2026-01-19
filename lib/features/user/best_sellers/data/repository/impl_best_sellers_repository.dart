import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/features/user/best_sellers/data/data_sources/best_sellers_sources.dart';
import 'package:flutter_tdd/features/user/best_sellers/domain/repository/best_sellers_repository.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop.dart';
import 'package:flutter_tdd/features/user/search/domain/entities/search_result_params.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: BestSellersRepository)


class ImplBestSellersRepository extends BestSellersRepository with ModelToDomain{
  var dataSources = getIt<BestSellersSources>();

  @override
  Future<Either<Failure, List<Shop>>> getShop(SearchResultParams param) async {
    var result = await dataSources.getShop(param);
    return toDomainResultList(result);
  }
}
