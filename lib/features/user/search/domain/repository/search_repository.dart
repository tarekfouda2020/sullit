import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/search/domain/entities/search_result_params.dart';
import 'package:flutter_tdd/features/user/search/domain/models/search_results.dart';

abstract class SearchRepository {
  Future<Either<Failure, SearchResults>> getSearchResult(
      SearchResultParams params);
}
