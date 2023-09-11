import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/features/user/search/data/data_sources/search_data_sources.dart';
import 'package:flutter_tdd/features/user/search/domain/entities/search_result_params.dart';
import 'package:flutter_tdd/features/user/search/domain/models/search_results.dart';
import 'package:flutter_tdd/features/user/search/domain/repository/search_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: SearchRepository)
class ImplSearchRepository extends SearchRepository with ModelToDomain {
  var dataSources = getIt<SearchDataSources>();

  @override
  Future<Either<Failure, SearchResults>> getSearchResult(
      SearchResultParams params) async {
    var result = await dataSources.getSearchResult(params);
    return toDomainResult(result);
  }
}
