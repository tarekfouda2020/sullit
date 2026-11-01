import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/features/user/price_finder/domain/models/search_query.dart';
import '../../../../../core/errors/failures.dart';
import 'package:flutter_tdd/features/user/price_finder/domain/entities/create_price_comparison_params.dart';
import 'package:flutter_tdd/features/user/price_finder/domain/models/price_comparison_domain_model.dart';

import '../models/price_finder_result.dart';

abstract class PriceFinderRepository {
  Future<Either<Failure, List<SearchQuery>>> getPopularSearches();

  Future<Either<Failure, PriceFinderResult>> getPriceResults(int id);

  Future<Either<Failure, PriceComparisonDomainModel>> createPriceComparison(
    CreatePriceComparisonParams params,
  );

  Future<Either<Failure, PriceComparisonDomainModel>> getPriceComparison(int id);
}
