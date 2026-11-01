import 'package:flutter/cupertino.dart';

import '../../../../../core/helpers/di.dart';
import '../../../../../core/usecases/use_case.dart';
import '../models/price_finder_result.dart';
import '../repository/price_finder_repository.dart';

class PriceSearchResult extends UseCase<PriceFinderResult?, int> {
  @override
  Future<PriceFinderResult?> call(int id) async {
    final result = await getIt<PriceFinderRepository>().getPriceResults(id);

    return result.fold(
      (l) {
        debugPrint('PriceSearchResult error: $l');
        return null;
      },
      (r) => r,
    );
  }
}
