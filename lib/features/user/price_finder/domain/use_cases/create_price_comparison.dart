import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/price_finder/domain/entities/create_price_comparison_params.dart';
import 'package:flutter_tdd/features/user/price_finder/domain/models/price_comparison_domain_model.dart';
import 'package:flutter_tdd/features/user/price_finder/domain/repository/price_finder_repository.dart';

class CreatePriceComparison
    extends UseCase<PriceComparisonDomainModel?, CreatePriceComparisonParams> {
  @override
  Future<PriceComparisonDomainModel?> call(CreatePriceComparisonParams params) async {
    final result =
        await getIt<PriceFinderRepository>().createPriceComparison(params);
    return result.fold(
      (_) => null,
      (data) => data,
    );
  }
}
