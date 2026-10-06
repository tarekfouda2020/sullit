import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/features/user/price_finder/data/data_sources/price_finder_sources.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/errors/failures.dart';
import '../../../../../core/http/generic_http/api_names.dart';
import '../../../../../core/http/generic_http/generic_http.dart';
import '../../../../../core/http/models/http_request_model.dart';
import '../models/search_query_model.dart';

@Injectable(as: PriceFinderSources)
class ImplPriceFinderSources extends PriceFinderSources {
  @override
  Future<Either<Failure, List<SearchQueryModel>>> getPopularSearches() async {
    final model = HttpRequestModel(
      url: ApiNames.popularSearches,
      requestMethod: RequestMethod.get,
      responseType: ResType.list,
      responseKey: (data) => data['data'],
      showLoader: false,
      toJsonFunc: (json) => SearchQueryModel.fromJson(json),
    );

    return await GenericHttpImpl<List<SearchQueryModel>>().call(model);
  }
}
