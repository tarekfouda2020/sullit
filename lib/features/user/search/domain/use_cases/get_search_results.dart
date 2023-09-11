import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/search/domain/entities/search_result_params.dart';
import 'package:flutter_tdd/features/user/search/domain/models/search_results.dart';
import 'package:flutter_tdd/features/user/search/domain/repository/search_repository.dart';

class GetSearchResults extends UseCase<SearchResults?, SearchResultParams> {
  @override
  Future<SearchResults?> call(SearchResultParams params) async {
    var result = await getIt<SearchRepository>().getSearchResult(params);
    return result.fold((l) => null, (r) => r);
  }
}
