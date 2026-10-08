import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/price_finder/domain/models/price_comparison_domain_model.dart';
import 'package:flutter_tdd/features/user/price_finder/domain/repository/price_finder_repository.dart';

class GetPriceComparison extends UseCase<PriceComparisonDomainModel?, int> {
  @override
  Future<PriceComparisonDomainModel?> call(int id) async {
    final result = await getIt<PriceFinderRepository>().getPriceComparison(id);
    return result.fold(
      (_) => null,
      (data) => data,
    );
  }
}
