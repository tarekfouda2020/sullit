import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/features/user/price_finder/domain/models/search_query.dart';
import '../../../../../core/errors/failures.dart';

abstract class PriceFinderRepository {
  Future<Either<Failure, List<SearchQuery>>> getPopularSearches();
}
