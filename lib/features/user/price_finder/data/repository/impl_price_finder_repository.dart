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

@Injectable(as: PriceFinderRepository)
class ImplPriceFinderRepository extends PriceFinderRepository with ModelToDomain {
  final PriceFinderDataSource _dataSource = getIt<PriceFinderDataSource>();

  @override
  Future<Either<Failure, PriceComparisonDomainModel>> createPriceComparison(
    CreatePriceComparisonParams params,
  ) async {
    final result = await _dataSource.createPriceComparison(params);
    return toDomainResult<PriceComparisonDomainModel, PriceComparisonModel>(result);
  }
}
