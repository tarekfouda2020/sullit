import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failures.dart';
import '../models/search_query_model.dart';

abstract class PriceFinderSources {
  Future<Either<Failure, List<SearchQueryModel>>> getPopularSearches();
}
