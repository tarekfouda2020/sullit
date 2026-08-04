import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/search_products_params.dart';
import 'package:flutter_tdd/features/user/category/domain/models/sub_category.dart';
import 'package:flutter_tdd/features/user/category/domain/repository/category_repository.dart';

class GetSubCategories extends UseCase<SubCategory?, SearchProductsParams> {
  @override
  Future<SubCategory?> call(SearchProductsParams params) async {
    var result = await getIt<CategoryRepository>().getSubCategories(params);
    return result.fold((l) => null, (r) => r);
  }
}
