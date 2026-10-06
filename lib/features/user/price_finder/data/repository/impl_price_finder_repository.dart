import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/errors/failures.dart';
import '../../../../../core/helpers/di.dart';
import '../../../../../core/models/model_to_domain/model_to_domain.dart';
import '../../../products/data/models/shop_model/shop_model.dart';
import '../../../products/domain/models/shop_category.dart';
import '../../domain/models/search_query.dart';
import '../../domain/repository/price_finder_repository.dart';
import '../data_sources/price_finder_sources.dart';
import '../models/search_query_model.dart';

@Injectable(as: PriceFinderRepository)
class ImplPharmaciesRepository extends PriceFinderRepository with ModelToDomain {
  final PriceFinderSources dataSources = getIt<PriceFinderSources>();

  @override
  Future<Either<Failure, List<SearchQuery>>> getPopularSearches() async {
    var result = await dataSources.getPopularSearches();
    return toDomainResultList<SearchQuery, SearchQueryModel>(result);
  }
}
