import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/price_finder/domain/entities/create_price_comparison_params.dart';
import 'package:flutter_tdd/features/user/price_finder/domain/models/price_comparison_domain_model.dart';

abstract class PriceFinderRepository {
  Future<Either<Failure, PriceComparisonDomainModel>> createPriceComparison(
    CreatePriceComparisonParams params,
  );
}
