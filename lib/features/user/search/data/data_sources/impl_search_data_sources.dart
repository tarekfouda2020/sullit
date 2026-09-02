// ignore_for_file: avoid_dynamic_calls

import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/features/user/search/data/data_sources/search_data_sources.dart';
import 'package:flutter_tdd/features/user/search/data/models/search_results_model/search_results_model.dart';
import 'package:flutter_tdd/features/user/search/domain/entities/search_result_params.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: SearchDataSources)
class ImplSearchDataSources extends SearchDataSources {
  @override
  Future<Either<Failure, SearchResultsModel>> getSearchResult(
      SearchResultParams params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getSearchResult + params.paramToQuery(),
      requestMethod: RequestMethod.get,
      requestBody: params.toJson(),
      responseType: ResType.model,
      refresh: params.refresh,
      responseKey: (data) => data['data'],
      toJsonFunc: (json) => SearchResultsModel.fromJson(json),
    );
    return await GenericHttpImpl<SearchResultsModel>()(model);
  }
}
