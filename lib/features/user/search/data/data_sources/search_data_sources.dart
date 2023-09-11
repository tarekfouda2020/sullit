import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/search/data/models/search_results_model/search_results_model.dart';
import 'package:flutter_tdd/features/user/search/domain/entities/search_result_params.dart';

abstract class SearchDataSources {
  Future<Either<Failure, SearchResultsModel>> getSearchResult(
      SearchResultParams params);
}
