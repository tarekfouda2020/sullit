import '../../../../../core/helpers/di.dart';
import '../../../../../core/usecases/use_case.dart';
import '../models/search_query.dart';
import '../repository/price_finder_repository.dart';

class PopularSearches extends UseCase<List<SearchQuery>, NoParams> {
  @override
  Future<List<SearchQuery>> call(NoParams params) async {
    final result = await getIt<PriceFinderRepository>().getPopularSearches();
    return result.fold(
      (l) => [],
      (r) => r,
    );
  }
}
