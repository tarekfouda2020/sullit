import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/features/user/price_finder/data/data_sources/price_finder_data_source.dart';
import 'package:flutter_tdd/features/user/price_finder/data/models/price_comparison_model/price_comparison_model.dart';
import 'package:flutter_tdd/features/user/price_finder/domain/entities/create_price_comparison_params.dart';
import 'package:injectable/injectable.dart';

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
}
