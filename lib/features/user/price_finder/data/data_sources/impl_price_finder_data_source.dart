import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/features/user/price_finder/data/data_sources/price_finder_data_source.dart';
import 'package:flutter_tdd/features/user/price_finder/data/models/price_comparison_model/price_comparison_model.dart';
import 'package:flutter_tdd/features/user/price_finder/domain/entities/create_price_comparison_params.dart';
import 'package:injectable/injectable.dart';

import '../models/price_finder_result_model/price_finder_result_model.dart';
import '../models/search_query_model/search_query_model.dart';

@Injectable(as: PriceFinderDataSource)
class ImplPriceFinderDataSource extends PriceFinderDataSource {
  @override
  Future<Either<Failure, PriceComparisonModel>> createPriceComparison(
    CreatePriceComparisonParams params,
  ) async {
    final model = HttpRequestModel(
      url: ApiNames.priceComparisons + params.queryParams(),
      requestMethod: RequestMethod.post,
      responseType: ResType.model,
      responseKey: (data) => data['data'],
      showLoader: true,
      toJsonFunc: (json) => PriceComparisonModel.fromJson(json),
    );

    return await GenericHttpImpl<PriceComparisonModel>().call(model);
  }

  @override
  Future<Either<Failure, PriceComparisonModel>> getPriceComparison(int id) async {
    final model = HttpRequestModel(
      url: ApiNames.priceComparison(id),
      requestMethod: RequestMethod.get,
      responseType: ResType.model,
      responseKey: (data) => data['data'],
      showLoader: false,
      toJsonFunc: (json) => PriceComparisonModel.fromJson(json),
    );

    return await GenericHttpImpl<PriceComparisonModel>().call(model);
  }

  @override
  Future<Either<Failure, List<SearchQueryModel>>> getPopularSearches() async {
    final model = HttpRequestModel(
      url: ApiNames.popularSearches,
      requestMethod: RequestMethod.get,
      responseType: ResType.list,
      responseKey: (data) => data['data'],
      showLoader: false,
      refresh: true,
      toJsonFunc: (json) => List<SearchQueryModel>.from(
        json.map(
          (e) => SearchQueryModel.fromJson(e),
        ),
      ),
    );

    return await GenericHttpImpl<List<SearchQueryModel>>().call(model);
  }

  @override
  Future<Either<Failure, PriceFinderResultModel>> getPriceResults(int id) async {
    final model = HttpRequestModel(
      url: ApiNames.priceComparisonsResults(id),
      requestMethod: RequestMethod.get,
      responseType: ResType.list,
      responseKey: (data) => data['data'],
      showLoader: false,
      refresh: true,
      toJsonFunc: (json) => PriceFinderResultModel.fromJson(json),
    );
    return await GenericHttpImpl<PriceFinderResultModel>().call(model);
  }
}
