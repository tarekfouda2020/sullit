import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/features/user/price_finder/data/data_sources/price_finder_data_source.dart';
import 'package:flutter_tdd/features/user/price_finder/data/models/price_comparison_model/price_comparison_model.dart';
import 'package:flutter_tdd/features/user/price_finder/domain/entities/create_price_comparison_params.dart';
import 'package:flutter_tdd/features/user/price_finder/domain/models/price_comparison_domain_model.dart';
import 'package:flutter_tdd/features/user/price_finder/domain/repository/price_finder_repository.dart';
import 'package:injectable/injectable.dart';
import '../../domain/models/price_finder_result.dart';
import '../../domain/models/search_query.dart';
import '../models/price_finder_result_model/price_finder_result_model.dart';
import '../models/search_query_model/search_query_model.dart';

@Injectable(as: PriceFinderRepository)
class ImplPriceFinderRepository extends PriceFinderRepository with ModelToDomain {
  final PriceFinderDataSource _dataSource = getIt<PriceFinderDataSource>();

  @override
  Future<Either<Failure, List<SearchQuery>>> getPopularSearches() async {
    var result = await _dataSource.getPopularSearches();
    return toDomainResultList<SearchQuery, SearchQueryModel>(result);
  }

  @override
  Future<Either<Failure, PriceComparisonDomainModel>> createPriceComparison(
    CreatePriceComparisonParams params,
  ) async {
    final result = await _dataSource.createPriceComparison(params);
    return toDomainResult<PriceComparisonDomainModel, PriceComparisonModel>(result);
  }

  @override
  Future<Either<Failure, PriceFinderResult>> getPriceResults(int id) async {
    final result = await _dataSource.getPriceResults(id);
    return toDomainResult<PriceFinderResult, PriceFinderResultModel>(result);
  }
}
