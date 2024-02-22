import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/category/domain/models/category.dart';
import 'package:flutter_tdd/features/user/category/domain/repository/category_repository.dart';

class GetSideSubCats extends UseCase<List<Category>, int> {
  @override
  Future<List<Category>> call(int params) async {
    var result = await getIt<CategoryRepository>().getSideSubCats(params);
    return result.fold((l) => [], (r) => r);
  }
}
