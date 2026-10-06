import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/price_finder/data/models/price_comparison_model/price_comparison_model.dart';
import 'package:flutter_tdd/features/user/price_finder/domain/entities/create_price_comparison_params.dart';

import '../models/search_query_model.dart';

abstract class PriceFinderDataSource {
  Future<Either<Failure, PriceComparisonModel>> createPriceComparison(CreatePriceComparisonParams params);
  Future<Either<Failure, List<SearchQueryModel>>> getPopularSearches();
}
